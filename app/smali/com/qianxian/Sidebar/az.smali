.class Lcom/qianxian/Sidebar/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/ay;

.field private final synthetic b:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/ay;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/az;->a:Lcom/qianxian/Sidebar/ay;

    iput-object p2, p0, Lcom/qianxian/Sidebar/az;->b:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/qianxian/Sidebar/az;->b:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/qianxian/Sidebar/az;->b:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianxian/Sidebar/az;->a:Lcom/qianxian/Sidebar/ay;

    invoke-static {v1}, Lcom/qianxian/Sidebar/ay;->a(Lcom/qianxian/Sidebar/ay;)Lcom/qianxian/Sidebar/av;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianxian/Sidebar/Sidebar;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
