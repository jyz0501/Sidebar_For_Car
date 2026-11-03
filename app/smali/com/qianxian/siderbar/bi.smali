.class Lcom/qianxian/siderbar/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/SwipeDetector;

.field private b:I


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/SwipeDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/bi;->a:Lcom/qianxian/siderbar/SwipeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/qianxian/siderbar/bi;->a:Lcom/qianxian/siderbar/SwipeDetector;

    invoke-virtual {v0}, Lcom/qianxian/siderbar/SwipeDetector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    :try_start_0
    iget v0, p0, Lcom/qianxian/siderbar/bi;->b:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/qianxian/siderbar/bi;->a:Lcom/qianxian/siderbar/SwipeDetector;

    const/4 v1, 0x0

    const-class v2, Lcom/qianxian/siderbar/SwipeDetector;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/siderbar/SwipeDetector;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v6, p0, Lcom/qianxian/siderbar/bi;->b:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
