.class Lcom/qianxian/sidebar/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/d;

.field private final synthetic b:Lcom/qianxian/sidebar/a;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/d;Lcom/qianxian/sidebar/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/f;->a:Lcom/qianxian/sidebar/d;

    iput-object p2, p0, Lcom/qianxian/sidebar/f;->b:Lcom/qianxian/sidebar/a;

    iput-object p3, p0, Lcom/qianxian/sidebar/f;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/sidebar/f;->b:Lcom/qianxian/sidebar/a;

    invoke-virtual {v0}, Lcom/qianxian/sidebar/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/qianxian/sidebar/f;->c:Landroid/view/View;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
