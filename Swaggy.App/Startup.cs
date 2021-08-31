using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Swaggy.App.Startup))]
namespace Swaggy.App
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
