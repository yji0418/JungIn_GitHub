﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberOnly_board_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //연결
            String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string sql = "select * from Drself_board where seq = " + Request.QueryString["sn"];
            SqlCommand cmd = new SqlCommand(sql, con);

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if(rd.Read())
            {
                TextBox1.Text = rd["name"].ToString();
                TextBox3.Text = rd["title"].ToString();
                TextBox4.Text = rd["body"].ToString();
            }

            rd.Close();
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //연결
        String conStr = ConfigurationManager.ConnectionStrings["DrSelfDB"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);

        string sql = @"Update Drself_board Set name = @name, title = @title, body = @body Where seq = "+Request.QueryString["sn"];
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@title", TextBox3.Text);
        cmd.Parameters.AddWithValue("@body", TextBox4.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("../board.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../board.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../board.aspx");
    }
}