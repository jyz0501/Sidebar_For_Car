.class Lcom/qianxian/sidebar/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/bd;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/bd;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/be;->a:Lcom/qianxian/sidebar/bd;

    iput p2, p0, Lcom/qianxian/sidebar/be;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/sidebar/be;->a:Lcom/qianxian/sidebar/bd;

    invoke-static {v0}, Lcom/qianxian/sidebar/bd;->a(Lcom/qianxian/sidebar/bd;)Lcom/qianxian/sidebar/av;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/sidebar/av;->a(Lcom/qianxian/sidebar/av;)Lcom/qianxian/sidebar/Sidebar;

    move-result-object v0

    iget v1, p0, Lcom/qianxian/sidebar/be;->b:I

    invoke-static {v0, v1}, Lcom/qianxian/sidebar/Sidebar;->a(Lcom/qianxian/sidebar/Sidebar;I)V

    return-void
.end method
