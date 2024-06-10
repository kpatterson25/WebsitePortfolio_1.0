using Google.Apis.Books.v1;
using Google.Apis.Books.v1.Data;
using Google.Apis.Services;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Windows.Forms;

namespace WebApplication1.BackEnd
{
    public class BookSearch
    {

        string connectionstring = "";
        private string bookname;
        private string bookauthor;
        private string bookdescription;
        private string yearpublished;
        private string authorbackground;
        private string imgurl;

        public string BookName
        {
            get { return bookname; }
            set { bookname = value; }
        }

        public string BookAuthor
        {
            get { return bookauthor; }
            set { bookauthor = value; }
        }

        public string BookDescription
        {
            get { return bookdescription; }
            set { bookdescription = value; }
        }

        public string YearPublished
        {
            get { return yearpublished; }
            set { yearpublished = value; }
        }

        public string AuthorBackground
        {
            get { return authorbackground; }
            set { authorbackground = value; }
        }

        public string ImgURL
        {
            get { return imgurl;}
            set { imgurl = value; }
        }
        public void getName(string isbn)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    string query = "select BookName, BookAuthor, BookDescription, YearPublished, AuthorBackground, ImgURL from BookData where ISBN = @isbn";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@isbn", isbn);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                BookName = String.Format("{0}", reader["BookName"]);
                                BookAuthor = String.Format("{0}", reader["BookAuthor"]);
                                BookDescription = String.Format("{0}", reader["BookDescription"]);
                                YearPublished = String.Format("{0}", reader["YearPublished"]);
                                AuthorBackground = String.Format("{0}", reader["AuthorBackground"]);
                                ImgURL = String.Format("{0}", reader["ImgURL"]);
                            }
                            else
                            {
                                System.Web.HttpContext.Current.Response.Write("<script>alert('Please Enter a Valid ISBN')</script>");
                            }
                        }
                    }
                    conn.Close();
                }
            }

            catch (Exception ex)
            {
                
            }

            
        }


    }
}