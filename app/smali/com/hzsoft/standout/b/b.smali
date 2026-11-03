.class public Lcom/hzsoft/standout/b/b;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Ljava/lang/Class;

.field public b:Landroid/os/Bundle;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

.field public g:Lcom/hzsoft/standout/b/a;

.field public h:I

.field private final i:Lcom/hzsoft/standout/StandOutWindow;

.field private j:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/hzsoft/standout/StandOutWindow;I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/hzsoft/standout/StandOutWindow;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hzsoft/standout/StandOutWindow;->setTheme(I)V

    iput-object p1, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hzsoft/standout/b/b;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/hzsoft/standout/b/b;->a:Ljava/lang/Class;

    iput p2, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {p1, p2, p0}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/hzsoft/standout/b/b;->f:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    invoke-virtual {p1, p2}, Lcom/hzsoft/standout/StandOutWindow;->b(I)I

    move-result v0

    iput v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    new-instance v0, Lcom/hzsoft/standout/b/a;

    invoke-direct {v0}, Lcom/hzsoft/standout/b/a;-><init>()V

    iput-object v0, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->f:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->f:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/hzsoft/standout/b/a;->i:F

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/hzsoft/standout/b/b;->b:Landroid/os/Bundle;

    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v1, Lcom/hzsoft/standout/a/a;->h:I

    invoke-static {v0, v1}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hzsoft/standout/b/b;->getSystemDecorations()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/hzsoft/standout/b/b;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/hzsoft/standout/b/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/hzsoft/standout/b/c;-><init>(Lcom/hzsoft/standout/b/b;Lcom/hzsoft/standout/StandOutWindow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/hzsoft/standout/StandOutWindow;->a(ILandroid/widget/FrameLayout;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must attach your view to the given frame in createAndAttachView()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a002c

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->i:I

    invoke-static {v1, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/b/b;->b(Landroid/view/View;)V

    :cond_2
    iget v1, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->a:I

    invoke-static {v1, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/b/b;->a(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/b/b;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow;
    .locals 1

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    return-object v0
.end method

.method private getSystemDecorations()Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v2}, Lcom/hzsoft/standout/StandOutWindow;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/hzsoft/standout/b/d;

    invoke-direct {v2, p0, v0}, Lcom/hzsoft/standout/b/d;-><init>(Lcom/hzsoft/standout/b/b;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    iget v3, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v2, v3}, Lcom/hzsoft/standout/StandOutWindow;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/hzsoft/standout/b/e;

    invoke-direct {v2, p0}, Lcom/hzsoft/standout/b/e;-><init>(Lcom/hzsoft/standout/b/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/hzsoft/standout/b/f;

    invoke-direct {v3, p0}, Lcom/hzsoft/standout/b/f;-><init>(Lcom/hzsoft/standout/b/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a002d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/hzsoft/standout/b/g;

    invoke-direct {v4, p0}, Lcom/hzsoft/standout/b/g;-><init>(Lcom/hzsoft/standout/b/b;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v4, 0x7f0a0033

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/hzsoft/standout/b/h;

    invoke-direct {v5, p0}, Lcom/hzsoft/standout/b/h;-><init>(Lcom/hzsoft/standout/b/b;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v5, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v6, Lcom/hzsoft/standout/a/a;->p:I

    invoke-static {v5, v6}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v5, Lcom/hzsoft/standout/a/a;->e:I

    invoke-static {v0, v5}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->f:I

    invoke-static {v0, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->g:I

    invoke-static {v0, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public a()Lcom/hzsoft/standout/b/k;
    .locals 1

    new-instance v0, Lcom/hzsoft/standout/b/k;

    invoke-direct {v0, p0}, Lcom/hzsoft/standout/b/k;-><init>(Lcom/hzsoft/standout/b/b;)V

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v1, Lcom/hzsoft/standout/a/a;->c:I

    invoke-static {v0, v1}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hzsoft/standout/b/i;

    invoke-direct {v1, p0}, Lcom/hzsoft/standout/b/i;-><init>(Lcom/hzsoft/standout/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v1, Lcom/hzsoft/standout/a/a;->b:I

    invoke-static {v0, v1}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/hzsoft/standout/b/j;

    invoke-direct {v1, p0, v0}, Lcom/hzsoft/standout/b/j;-><init>(Lcom/hzsoft/standout/b/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public a(Z)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v3, Lcom/hzsoft/standout/a/a;->n:I

    invoke-static {v0, v3}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hzsoft/standout/b/b;->d:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean p1, p0, Lcom/hzsoft/standout/b/b;->d:Z

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    iget v3, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v0, v3, p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/b/b;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Window "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " focus change "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "(true)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "Window"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " cancelled by implementation."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/hzsoft/standout/b/b;->d:Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "(false)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v3, Lcom/hzsoft/standout/a/a;->o:I

    invoke-static {v0, v3}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_7

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a(Z)V

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    iget v3, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v1, v3, v0}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)V

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v0, p0}, Lcom/hzsoft/standout/StandOutWindow;->a(Lcom/hzsoft/standout/b/b;)V

    :cond_6
    :goto_4
    move v1, v2

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v4, Lcom/hzsoft/standout/a/a;->h:I

    invoke-static {v3, v4}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v3

    if-eqz v3, :cond_8

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v0}, Lcom/hzsoft/standout/StandOutWindow;->e()Lcom/hzsoft/standout/b/b;

    move-result-object v0

    if-ne v0, p0, :cond_6

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzsoft/standout/StandOutWindow;->a(Lcom/hzsoft/standout/b/b;)V

    goto :goto_4
.end method

.method b(Landroid/view/View;)V
    .locals 4

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    iget v2, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v1, v2, p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/b/b;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Window"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelled by implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v1, p0}, Lcom/hzsoft/standout/StandOutWindow;->b(Lcom/hzsoft/standout/b/b;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->f:Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    :cond_0
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v1}, Lcom/hzsoft/standout/StandOutWindow;->e()Lcom/hzsoft/standout/b/b;

    move-result-object v1

    if-eq v1, p0, :cond_0

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    iget v2, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v1, v2}, Lcom/hzsoft/standout/StandOutWindow;->i(I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->q:I

    invoke-static {v1, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/hzsoft/standout/b/a;->j:D

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Lcom/hzsoft/standout/b/a;->a:D

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/hzsoft/standout/b/a;->c:D

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v0, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/hzsoft/standout/b/a;->b:D

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v4, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/hzsoft/standout/b/b;->c:I

    sget v3, Lcom/hzsoft/standout/a/a;->q:I

    invoke-static {v2, v3}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float v0, v1, v3

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_1

    :goto_1
    return v7

    :pswitch_0
    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v0}, Lcom/hzsoft/standout/StandOutWindow;->e()Lcom/hzsoft/standout/b/b;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v0, p0}, Lcom/hzsoft/standout/StandOutWindow;->b(Lcom/hzsoft/standout/b/b;)Z

    :cond_1
    iget-object v0, p0, Lcom/hzsoft/standout/b/b;->i:Lcom/hzsoft/standout/StandOutWindow;

    iget v1, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-virtual {v0, v1, p0, p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v2, v2, Lcom/hzsoft/standout/b/a;->a:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iput-wide v0, v2, Lcom/hzsoft/standout/b/a;->a:D

    :cond_2
    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v3, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v3, v3, Lcom/hzsoft/standout/b/a;->j:D

    iget-object v5, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v5, v5, Lcom/hzsoft/standout/b/a;->a:D

    div-double v5, v0, v5

    mul-double/2addr v3, v5

    iput-wide v3, v2, Lcom/hzsoft/standout/b/a;->j:D

    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iput-wide v0, v2, Lcom/hzsoft/standout/b/a;->a:D

    invoke-virtual {p0}, Lcom/hzsoft/standout/b/b;->a()Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Lcom/hzsoft/standout/b/k;->a(FF)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v1, v1, Lcom/hzsoft/standout/b/a;->c:D

    iget-object v3, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v3, v3, Lcom/hzsoft/standout/b/a;->j:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v2, v2, Lcom/hzsoft/standout/b/a;->b:D

    iget-object v4, p0, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-wide v4, v4, Lcom/hzsoft/standout/b/a;->j:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/hzsoft/standout/b/k;->b(II)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/k;->a()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hzsoft/standout/b/b;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": LayoutParams must be an instance of StandOutLayoutParams."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
