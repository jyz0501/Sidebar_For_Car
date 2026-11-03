.class Lcom/qianxian/siderbar/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/bd;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/bd;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/be;->a:Lcom/qianxian/siderbar/bd;

    iput p2, p0, Lcom/qianxian/siderbar/be;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/siderbar/be;->a:Lcom/qianxian/siderbar/bd;

    invoke-static {v0}, Lcom/qianxian/siderbar/bd;->a(Lcom/qianxian/siderbar/bd;)Lcom/qianxian/siderbar/av;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v0

    iget v1, p0, Lcom/qianxian/siderbar/be;->b:I

    invoke-static {v0, v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;I)V

    return-void
.end method
