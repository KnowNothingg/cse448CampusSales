using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(cse448Project.Startup))]
namespace cse448Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
