.class Lcom/qianxian/siderbar/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/t;

.field private final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/t;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/v;->a:Lcom/qianxian/siderbar/t;

    iput-object p2, p0, Lcom/qianxian/siderbar/v;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/v;)Lcom/qianxian/siderbar/t;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/v;->a:Lcom/qianxian/siderbar/t;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/qianxian/siderbar/v;->a:Lcom/qianxian/siderbar/t;

    invoke-static {v0}, Lcom/qianxian/siderbar/t;->a(Lcom/qianxian/siderbar/t;)Lcom/qianxian/siderbar/RunningAppsBar;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qianxian/siderbar/RunningAppsBar;->h(I)V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianxian/siderbar/w;

    iget-object v2, p0, Lcom/qianxian/siderbar/v;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1, p0, v2}, Lcom/qianxian/siderbar/w;-><init>(Lcom/qianxian/siderbar/v;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
