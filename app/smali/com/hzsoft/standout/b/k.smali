.class public Lcom/hzsoft/standout/b/k;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:F

.field c:I

.field d:I

.field e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

.field final synthetic f:Lcom/hzsoft/standout/b/b;


# direct methods
.method public constructor <init>(Lcom/hzsoft/standout/b/b;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iput v1, p0, Lcom/hzsoft/standout/b/k;->b:F

    iput v1, p0, Lcom/hzsoft/standout/b/k;->a:F

    invoke-static {p1}, Lcom/hzsoft/standout/b/b;->a(Lcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/StandOutWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/hzsoft/standout/b/k;->d:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x41c80000    # 25.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hzsoft/standout/b/k;->c:I

    return-void
.end method

.method private a(IIZ)Lcom/hzsoft/standout/b/k;
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/hzsoft/standout/b/k;->a:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/b/k;->a:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/b/k;->b:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/b/k;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eq p1, v4, :cond_2

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    int-to-float v1, p1

    iget-object v2, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/hzsoft/standout/b/k;->a:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    :cond_2
    if-eq p2, v4, :cond_3

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/hzsoft/standout/b/k;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    :cond_3
    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget v0, v0, Lcom/hzsoft/standout/b/b;->c:I

    sget v1, Lcom/hzsoft/standout/a/a;->m:I

    invoke-static {v0, v1}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v0, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->gravity:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget v2, v2, Lcom/hzsoft/standout/b/b;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gravity must be TOP|LEFT if FLAG_WINDOW_EDGE_LIMITS_ENABLE or FLAG_WINDOW_EDGE_TILE_ENABLE is set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/hzsoft/standout/b/k;->d:I

    iget-object v3, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/hzsoft/standout/b/k;->c:I

    iget-object v3, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    :cond_5
    return-object p0
.end method

.method private b(IIZ)Lcom/hzsoft/standout/b/k;
    .locals 6

    const/high16 v4, -0x80000000

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/hzsoft/standout/b/k;->a:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/b/k;->a:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/b/k;->b:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hzsoft/standout/b/k;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    if-eq p1, v4, :cond_2

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iput p1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    :cond_2
    if-eq p2, v4, :cond_3

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iput p2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    :cond_3
    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->b:I

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v0, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a:I

    iget-object v4, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget v4, v4, Lcom/hzsoft/standout/b/b;->c:I

    sget v5, Lcom/hzsoft/standout/a/a;->m:I

    invoke-static {v4, v5}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/hzsoft/standout/b/k;->d:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, p0, Lcom/hzsoft/standout/b/k;->c:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    iget-object v4, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v4, v4, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget-object v5, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v5, v5, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->d:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget-object v4, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v4, v4, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->c:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget v0, v0, Lcom/hzsoft/standout/b/b;->c:I

    sget v1, Lcom/hzsoft/standout/a/a;->j:I

    invoke-static {v0, v1}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v0, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget-object v1, v1, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v1, v1, Lcom/hzsoft/standout/b/a;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget-object v4, v4, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v4, v4, Lcom/hzsoft/standout/b/a;->i:F

    div-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v4, v4, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->c:I

    if-lt v1, v4, :cond_7

    iget-object v4, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v4, v4, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a:I

    if-gt v1, v4, :cond_7

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    :cond_5
    :goto_0
    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v0, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    int-to-float v0, v0

    int-to-float v1, v2

    iget v2, p0, Lcom/hzsoft/standout/b/k;->a:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    int-to-float v1, v1

    int-to-float v2, v3

    iget v3, p0, Lcom/hzsoft/standout/b/k;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/hzsoft/standout/b/k;->a(II)Lcom/hzsoft/standout/b/k;

    :cond_6
    return-object p0

    :cond_7
    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iput v0, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public a(FF)Lcom/hzsoft/standout/b/k;
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/hzsoft/standout/b/k;->a:F

    iput p2, p0, Lcom/hzsoft/standout/b/k;->b:F

    return-object p0
.end method

.method public a(II)Lcom/hzsoft/standout/b/k;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hzsoft/standout/b/k;->a(IIZ)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    invoke-static {v0}, Lcom/hzsoft/standout/b/b;->a(Lcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/k;->f:Lcom/hzsoft/standout/b/b;

    iget v1, v1, Lcom/hzsoft/standout/b/b;->e:I

    iget-object v2, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hzsoft/standout/b/k;->e:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    :cond_0
    return-void
.end method

.method public b(II)Lcom/hzsoft/standout/b/k;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hzsoft/standout/b/k;->b(IIZ)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    return-object v0
.end method
