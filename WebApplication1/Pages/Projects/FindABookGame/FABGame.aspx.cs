using Google.Apis.Auth.OAuth2.Requests;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using WebApplication1.BackEnd;

namespace WebApplication1.Pages.Projects
{
    public partial class FABGame : System.Web.UI.Page
    {
        BookSearch bs = new BookSearch();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbxISBN_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(tbxISBN.Text))
            {
                System.Web.HttpContext.Current.Response.Write("<script>alert('Please Enter a Valid ISBN')</script>");

            }
            else
            {
                bs.getName(tbxISBN.Text);
                spanauthor.Text = bs.BookName;
                spandate.Text = bs.YearPublished;
                tbxbookdescription.Text = bs.BookDescription;
                tbxbio.Text = bs.AuthorBackground;
                bookimage.ImageUrl = bs.ImgURL;
            }
            
            
        }


    }
}