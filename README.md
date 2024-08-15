*** To run this application, we must first attach the database files to the database.


*** Then we enter the LoginPanel.aspx.cs folder in the application. 
“SqlConnection baglanti = new SqlConnection(@“Data Source=ALPEREN;Initial Catalog=SiteDB;Integrated Security=True”);” You should replace Alperen with your own sql server name.


*** Then go to the Web.config file and write “<connectionStrings>
  <add name=“SiteDBConnectionString” connectionString=“Data Source=ALPEREN;Initial Catalog=SiteDB;Integrated Security=True” providerName=“System.Data.SqlClient”/>
</connectionStrings>” we should do the same here.

Translated with DeepL.com (free version)
