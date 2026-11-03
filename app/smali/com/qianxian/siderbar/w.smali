.class Lcom/qianxian/siderbar/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/v;

.field private final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/v;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/w;->a:Lcom/qianxian/siderbar/v;

    iput-object p2, p0, Lcom/qianxian/siderbar/w;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qianxian/siderbar/w;->a:Lcom/qianxian/siderbar/v;

    invoke-static {v0}, Lcom/qianxian/siderbar/v;->a(Lcom/qianxian/siderbar/v;)Lcom/qianxian/siderbar/t;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/siderbar/t;->a(Lcom/qianxian/siderbar/t;)Lcom/qianxian/siderbar/RunningAppsBar;

    move-result-object v0

    iget-object v0, v0, Lcom/qianxian/siderbar/RunningAppsBar;->d:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/qianxian/siderbar/w;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianxian/siderbar/w;->a:Lcom/qianxian/siderbar/v;

    invoke-static {v1}, Lcom/qianxian/siderbar/v;->a(Lcom/qianxian/siderbar/v;)Lcom/qianxian/siderbar/t;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/siderbar/t;->a(Lcom/qianxian/siderbar/t;)Lcom/qianxian/siderbar/RunningAppsBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianxian/siderbar/RunningAppsBar;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
