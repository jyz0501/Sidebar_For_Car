.class Lcom/hzsoft/standout/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/b/b;


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/b/i;->a:Lcom/hzsoft/standout/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/hzsoft/standout/b/i;->a:Lcom/hzsoft/standout/b/b;

    invoke-static {v0}, Lcom/hzsoft/standout/b/b;->a(Lcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/i;->a:Lcom/hzsoft/standout/b/b;

    iget v1, v1, Lcom/hzsoft/standout/b/b;->e:I

    iget-object v2, p0, Lcom/hzsoft/standout/b/i;->a:Lcom/hzsoft/standout/b/b;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/hzsoft/standout/StandOutWindow;->e(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
