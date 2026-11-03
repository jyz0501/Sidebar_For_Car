.class Lcom/qianxian/siderbar/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/MainActivity;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/q;->a:Lcom/qianxian/siderbar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/qianxian/siderbar/SwipeDetector;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/qianxian/siderbar/q;->a:Lcom/qianxian/siderbar/MainActivity;

    const-class v1, Lcom/qianxian/siderbar/SwipeDetector;

    invoke-static {v0, v1, v2}, Lcom/hzsoft/standout/StandOutWindow;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    sget-boolean v0, Lcom/qianxian/siderbar/BootReceiver;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianxian/siderbar/q;->a:Lcom/qianxian/siderbar/MainActivity;

    const-class v1, Lcom/qianxian/siderbar/Sidebar;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hzsoft/standout/StandOutWindow;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sput-boolean v2, Lcom/qianxian/siderbar/BootReceiver;->a:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
