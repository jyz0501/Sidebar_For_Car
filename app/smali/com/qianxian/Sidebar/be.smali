.class Lcom/qianxian/Sidebar/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/bd;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/bd;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/be;->a:Lcom/qianxian/Sidebar/bd;

    iput p2, p0, Lcom/qianxian/Sidebar/be;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/Sidebar/be;->a:Lcom/qianxian/Sidebar/bd;

    invoke-static {v0}, Lcom/qianxian/Sidebar/bd;->a(Lcom/qianxian/Sidebar/bd;)Lcom/qianxian/Sidebar/av;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/Sidebar/av;->a(Lcom/qianxian/Sidebar/av;)Lcom/qianxian/Sidebar/Sidebar;

    move-result-object v0

    iget v1, p0, Lcom/qianxian/Sidebar/be;->b:I

    invoke-static {v0, v1}, Lcom/qianxian/Sidebar/Sidebar;->a(Lcom/qianxian/Sidebar/Sidebar;I)V

    return-void
.end method
