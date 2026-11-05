.class Lcom/qianxian/Sidebar/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/av;

.field private final synthetic b:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/av;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/ay;->a:Lcom/qianxian/Sidebar/av;

    iput-object p2, p0, Lcom/qianxian/Sidebar/ay;->b:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/Sidebar/ay;)Lcom/qianxian/Sidebar/av;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/Sidebar/ay;->a:Lcom/qianxian/Sidebar/av;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/qianxian/Sidebar/ay;->a:Lcom/qianxian/Sidebar/av;

    invoke-static {v0}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/Sidebar/Sidebar;->c(Lcom/qianxian/Sidebar/Sidebar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianxian/Sidebar/ay;->a:Lcom/qianxian/Sidebar/av;

    invoke-static {v0}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianxian/Sidebar/Sidebar;->h(I)V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianxian/Sidebar/az;

    iget-object v2, p0, Lcom/qianxian/Sidebar/ay;->b:Landroid/content/pm/ResolveInfo;

    invoke-direct {v1, p0, v2}, Lcom/qianxian/Sidebar/az;-><init>(Lcom/qianxian/Sidebar/ay;Landroid/content/pm/ResolveInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
