using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebApp_Multifuncional.Startup))]
namespace WebApp_Multifuncional
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
