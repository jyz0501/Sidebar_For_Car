.class Lcom/hzsoft/standout/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/b/b;

.field private final synthetic b:Lcom/hzsoft/standout/StandOutWindow;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/b/b;Lcom/hzsoft/standout/StandOutWindow;I)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/b/c;->a:Lcom/hzsoft/standout/b/b;

    iput-object p2, p0, Lcom/hzsoft/standout/b/c;->b:Lcom/hzsoft/standout/StandOutWindow;

    iput p3, p0, Lcom/hzsoft/standout/b/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/hzsoft/standout/b/c;->b:Lcom/hzsoft/standout/StandOutWindow;

    iget v3, p0, Lcom/hzsoft/standout/b/c;->c:I

    iget-object v4, p0, Lcom/hzsoft/standout/b/c;->a:Lcom/hzsoft/standout/b/b;

    invoke-virtual {v0, v3, v4, p1, p2}, Lcom/hzsoft/standout/StandOutWindow;->d(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/hzsoft/standout/b/c;->b:Lcom/hzsoft/standout/StandOutWindow;

    iget v4, p0, Lcom/hzsoft/standout/b/c;->c:I

    iget-object v5, p0, Lcom/hzsoft/standout/b/c;->a:Lcom/hzsoft/standout/b/b;

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
