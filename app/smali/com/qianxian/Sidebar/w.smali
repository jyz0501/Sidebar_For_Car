.class Lcom/qianxian/Sidebar/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/v;

.field private final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/v;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/w;->a:Lcom/qianxian/Sidebar/v;

    iput-object p2, p0, Lcom/qianxian/Sidebar/w;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/w;->a:Lcom/qianxian/Sidebar/v;

    invoke-static {v0}, Lcom/qianxian/Sidebar/v;->a(Lcom/qianxian/Sidebar/v;)Lcom/qianxian/Sidebar/t;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/Sidebar/t;->a(Lcom/qianxian/Sidebar/t;)Lcom/qianxian/Sidebar/RunningAppsBar;

    move-result-object v0

    iget-object v0, v0, Lcom/qianxian/Sidebar/RunningAppsBar;->d:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/qianxian/Sidebar/w;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianxian/Sidebar/w;->a:Lcom/qianxian/Sidebar/v;

    invoke-static {v1}, Lcom/qianxian/Sidebar/v;->a(Lcom/qianxian/Sidebar/v;)Lcom/qianxian/Sidebar/t;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/Sidebar/t;->a(Lcom/qianxian/Sidebar/t;)Lcom/qianxian/Sidebar/RunningAppsBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianxian/Sidebar/RunningAppsBar;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
