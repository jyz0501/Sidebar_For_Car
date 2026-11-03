.class Lcom/hzsoft/standout/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/StandOutWindow;

.field private final synthetic b:Lcom/hzsoft/standout/e;

.field private final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/StandOutWindow;Lcom/hzsoft/standout/e;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/c;->a:Lcom/hzsoft/standout/StandOutWindow;

    iput-object p2, p0, Lcom/hzsoft/standout/c;->b:Lcom/hzsoft/standout/e;

    iput-object p3, p0, Lcom/hzsoft/standout/c;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hzsoft/standout/c;->b:Lcom/hzsoft/standout/e;

    iget-object v0, v0, Lcom/hzsoft/standout/e;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/hzsoft/standout/c;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
