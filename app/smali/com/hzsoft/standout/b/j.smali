.class Lcom/hzsoft/standout/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/b/b;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/b/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/b/j;->a:Lcom/hzsoft/standout/b/b;

    iput-object p2, p0, Lcom/hzsoft/standout/b/j;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/hzsoft/standout/b/j;->a:Lcom/hzsoft/standout/b/b;

    invoke-static {v0}, Lcom/hzsoft/standout/b/b;->a(Lcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/j;->a:Lcom/hzsoft/standout/b/b;

    iget v1, v1, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v0, v1}, Lcom/hzsoft/standout/StandOutWindow;->j(I)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hzsoft/standout/b/j;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_0
    return-void
.end method
