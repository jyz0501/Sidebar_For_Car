.class Lcom/qianxian/Sidebar/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/WidgetHelperActivity;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/WidgetHelperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/bj;->a:Lcom/qianxian/Sidebar/WidgetHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/bj;->a:Lcom/qianxian/Sidebar/WidgetHelperActivity;

    invoke-virtual {v0}, Lcom/qianxian/Sidebar/WidgetHelperActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
