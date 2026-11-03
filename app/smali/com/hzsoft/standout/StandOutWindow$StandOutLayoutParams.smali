.class public Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
.super Landroid/view/WindowManager$LayoutParams;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field final synthetic f:Lcom/hzsoft/standout/StandOutWindow;


# direct methods
.method public constructor <init>(Lcom/hzsoft/standout/StandOutWindow;I)V
    .locals 9

    const v7, 0x7fffffff

    const/16 v1, 0xc8

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->f:Lcom/hzsoft/standout/StandOutWindow;

    const/16 v3, 0x7d2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt v8, v0, :cond_legacy_type

    const/16 v3, 0x7f6

    :cond_legacy_type
    const v4, 0x40020

    const/4 v5, -0x3

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p1, p2}, Lcom/hzsoft/standout/StandOutWindow;->b(I)I

    move-result v0

    invoke-virtual {p0, v6}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a(Z)V

    sget v1, Lcom/hzsoft/standout/a/a;->m:I

    invoke-static {v0, v1}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    :cond_0
    iget v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    invoke-direct {p0, p2, v0}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a(II)I

    move-result v0

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    iget v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-direct {p0, p2, v0}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->b(II)I

    move-result v0

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->gravity:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->e:I

    iput v6, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->c:I

    iput v6, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->d:I

    iput v7, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a:I

    iput v7, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/hzsoft/standout/StandOutWindow;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lcom/hzsoft/standout/StandOutWindow;I)V

    iput p3, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iput p4, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/hzsoft/standout/StandOutWindow;IIIII)V
    .locals 5

    const v4, 0x7fffffff

    const v0, -0x7fffffff

    const/high16 v3, -0x80000000

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lcom/hzsoft/standout/StandOutWindow;III)V

    if-eq p5, v0, :cond_0

    iput p5, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    :cond_0
    if-eq p6, v0, :cond_1

    iput p6, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    :cond_1
    iget-object v0, p1, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    if-ne v2, v4, :cond_4

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    :cond_2
    :goto_0
    iget v1, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    if-ne v1, v4, :cond_5

    sub-int/2addr v0, p4

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v2, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    if-ne v2, v3, :cond_2

    sub-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    if-ne v1, v3, :cond_3

    sub-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    goto :goto_1
.end method

.method private a(II)I
    .locals 3

    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->f:Lcom/hzsoft/standout/StandOutWindow;

    iget-object v0, v0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sget-object v1, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {v1}, Lcom/hzsoft/standout/g;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v0, p2

    rem-int v0, v1, v0

    return v0
.end method

.method private b(II)I
    .locals 6

    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->f:Lcom/hzsoft/standout/StandOutWindow;

    iget-object v0, v0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sget-object v2, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {v2}, Lcom/hzsoft/standout/g;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    mul-int/lit8 v4, p1, 0x64

    mul-int/lit16 v4, v4, 0xc8

    iget v5, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    sub-int/2addr v1, v5

    div-int v1, v4, v1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    sub-int/2addr v0, p2

    rem-int v0, v1, v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    xor-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->flags:I

    goto :goto_0
.end method
