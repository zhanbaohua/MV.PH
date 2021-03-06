﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;

namespace MV.PH.WebAdmin.Model.Common
{
    public sealed class PublicLog
    {
        private string ConnectionString { get; set; }
        private DbProviderFactory providerFactory;
        /// <summary>  
        /// 构造函数  
        /// </summary>  
        /// <param name="connectionString">数据库连接字符串</param>  
        /// <param name="providerType">数据库类型枚举，参见<paramref name="providerType"/></param>  
        public PublicLog(string connectionString, DbProviderType providerType)
        {
            ConnectionString = connectionString;
            providerFactory = ProviderFactory.GetDbProviderFactory(providerType);
            if (providerFactory == null)
            {
                throw new ArgumentException("Can't load DbProviderFactory for given value of providerType");
            }
        }


        public DbParameter CreateDbParameter(string name, object value)
        {
            return CreateDbParameter(name, ParameterDirection.Input, value);
        }

        public DbParameter CreateDbParameter(string name, ParameterDirection parameterDirection, object value)
        {
            DbParameter parameter = providerFactory.CreateParameter();
            parameter.ParameterName = name;
            parameter.Value = value;
            parameter.Direction = parameterDirection;
            return parameter;
        }

        /// <summary>  
        /// 创建一个DbCommand对象  
        /// </summary>  
        /// <param name="sql">要执行的查询语句</param>     
        /// <param name="parameters">执行SQL查询语句所需要的参数</param>  
        /// <param name="commandType">执行的SQL语句的类型</param>  
        /// <returns></returns>  
        private DbCommand CreateDbCommand(string sql, IList<DbParameter> parameters, CommandType commandType)
        {
            DbConnection connection = providerFactory.CreateConnection();
            DbCommand command = providerFactory.CreateCommand();
            connection.ConnectionString = ConnectionString;
            command.CommandText = sql;
            command.CommandType = commandType;
            command.Connection = connection;
            if (!(parameters == null || parameters.Count == 0))
            {
                foreach (DbParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);
                }
            }
            return command;
        }
        public DbCommand CreateDbCommand(string sql)
        {
            DbConnection connection = providerFactory.CreateConnection();
            DbCommand command = providerFactory.CreateCommand();
            connection.ConnectionString = ConnectionString;
            command.CommandText = sql;
            command.Connection = connection;

            return command;
        }

        public int ExecuteNonQuery(string sql, IList<DbParameter> parameters, bool isTrans = false)
        {
            return ExecuteNonQuery(sql, parameters, CommandType.Text, isTrans);
        }
        /// <summary>     
        /// 对数据库执行增删改操作，返回受影响的行数。     
        /// </summary>     
        /// <param name="sql">要执行的增删改的SQL语句</param>     
        /// <param name="parameters">执行增删改语句所需要的参数</param>  
        /// <param name="commandType">执行的SQL语句的类型</param>  
        /// <returns></returns>  
        public int ExecuteNonQuery(string sql, IList<DbParameter> parameters, CommandType commandType, bool isTrans = false)
        {
            using (DbCommand command = CreateDbCommand(sql, parameters, commandType))
            {
                command.Connection.Open();
                int affectedRows = 0;
                var connx = command.Connection;

                if (isTrans) command.Transaction = connx.BeginTransaction();
                try
                {
                    affectedRows = command.ExecuteNonQuery();
                    if (isTrans) command.Transaction.Commit();
                }
                catch (Exception ex)
                {
                    if (isTrans) command.Transaction.Rollback();
                    throw ex;
                }
                finally
                {
                    command.Connection.Close();
                }
                return affectedRows;
            }
        }
        public int ExecuteNonQuery(string sql, bool isTrans = false)
        {
            using (DbCommand command = CreateDbCommand(sql))
            {
                command.Connection.Open();
                int affectedRows = 0;
                var connx = command.Connection;

                if (isTrans) command.Transaction = connx.BeginTransaction();
                try
                {
                    affectedRows = command.ExecuteNonQuery();
                    if (isTrans) command.Transaction.Commit();
                }
                catch (Exception ex)
                {
                    if (isTrans) command.Transaction.Rollback();
                    throw ex;
                }
                finally
                {
                    command.Connection.Close();
                }
                return affectedRows;
            }
        }
        /// <summary>  
        /// 数据库类型枚举  
        /// </summary>  
        public enum DbProviderType : byte
        {
            SqlServer,
            MySql,
            SQLite,
            Oracle,
            ODBC,
            OleDb,
            Firebird,
            PostgreSql,
            DB2,
            Informix,
            SqlServerCe
        }
        /// <summary>  
        /// DbProviderFactory工厂类  
        /// </summary>  
        public class ProviderFactory
        {
            private static Dictionary<DbProviderType, string> providerInvariantNames = new Dictionary<DbProviderType, string>();
            private static Dictionary<DbProviderType, DbProviderFactory> providerFactoies = new Dictionary<DbProviderType, DbProviderFactory>(20);
            static ProviderFactory()
            {
                //加载已知的数据库访问类的程序集  
                providerInvariantNames.Add(DbProviderType.SqlServer, "System.Data.SqlClient");
                providerInvariantNames.Add(DbProviderType.OleDb, "System.Data.OleDb");
                providerInvariantNames.Add(DbProviderType.ODBC, "System.Data.ODBC");
                providerInvariantNames.Add(DbProviderType.Oracle, "System.Data.OracleClient");
                providerInvariantNames.Add(DbProviderType.MySql, "MySql.Data.MySqlClient");
                providerInvariantNames.Add(DbProviderType.SQLite, "System.Data.SQLite");
                providerInvariantNames.Add(DbProviderType.Firebird, "FirebirdSql.Data.Firebird");
                providerInvariantNames.Add(DbProviderType.PostgreSql, "Npgsql");
                providerInvariantNames.Add(DbProviderType.DB2, "IBM.Data.DB2.iSeries");
                providerInvariantNames.Add(DbProviderType.Informix, "IBM.Data.Informix");
                providerInvariantNames.Add(DbProviderType.SqlServerCe, "System.Data.SqlServerCe");
            }
            /// <summary>  
            /// 获取指定数据库类型对应的程序集名称  
            /// </summary>  
            /// <param name="providerType">数据库类型枚举</param>  
            /// <returns></returns>  
            public static string GetProviderInvariantName(DbProviderType providerType)
            {
                return providerInvariantNames[providerType];
            }
            /// <summary>  
            /// 获取指定类型的数据库对应的DbProviderFactory  
            /// </summary>  
            /// <param name="providerType">数据库类型枚举</param>  
            /// <returns></returns>  
            public static DbProviderFactory GetDbProviderFactory(DbProviderType providerType)
            {
                //如果还没有加载，则加载该DbProviderFactory  
                if (!providerFactoies.ContainsKey(providerType))
                {
                    providerFactoies.Add(providerType, ImportDbProviderFactory(providerType));
                }
                return providerFactoies[providerType];
            }
            /// <summary>  
            /// 加载指定数据库类型的DbProviderFactory  
            /// </summary>  
            /// <param name="providerType">数据库类型枚举</param>  
            /// <returns></returns>  
            private static DbProviderFactory ImportDbProviderFactory(DbProviderType providerType)
            {
                string providerName = providerInvariantNames[providerType];
                DbProviderFactory factory = null;
                try
                {
                    //从全局程序集中查找  
                    factory = DbProviderFactories.GetFactory(providerName);
                }
                catch (ArgumentException e)
                {
                    factory = null;
                }
                return factory;
            }
        }

        public static class DbExecExt
        {
            private static DbProviderFactory providerFactory;
            static DbExecExt()
            {
                providerFactory = ProviderFactory.GetDbProviderFactory(DbProviderType.SqlServer);
            }
        }
    }
}
