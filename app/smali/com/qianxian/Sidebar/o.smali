.class Lcom/qianxian/Sidebar/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/m;

.field private final synthetic b:Lcom/qianxian/Sidebar/a;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/m;Lcom/qianxian/Sidebar/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/o;->a:Lcom/qianxian/Sidebar/m;

    iput-object p2, p0, Lcom/qianxian/Sidebar/o;->b:Lcom/qianxian/Sidebar/a;

    iput-object p3, p0, Lcom/qianxian/Sidebar/o;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/Sidebar/o;->b:Lcom/qianxian/Sidebar/a;

    invoke-virtual {v0}, Lcom/qianxian/Sidebar/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/qianxian/Sidebar/o;->c:Landroid/view/View;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
