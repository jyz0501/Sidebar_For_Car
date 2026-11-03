.class Lcom/qianxian/siderbar/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/av;

.field private b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/av;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    iput p2, p0, Lcom/qianxian/siderbar/bb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/bb;)Lcom/qianxian/siderbar/av;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v4}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v4

    invoke-static {v4}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "animationSpeed"

    const/16 v6, 0x1f4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/qianxian/siderbar/bb;->b:I

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;Z)V

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qianxian/siderbar/Sidebar;->b(Lcom/qianxian/siderbar/Sidebar;Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->c(Lcom/qianxian/siderbar/Sidebar;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->d(Lcom/qianxian/siderbar/Sidebar;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/qianxian/siderbar/bb;->b:I

    iget-object v3, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v3}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v3

    sget v4, Lcom/qianxian/siderbar/Sidebar;->e:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;Z)V

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/qianxian/siderbar/Sidebar;->h(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v2}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v2

    sget v3, Lcom/qianxian/siderbar/Sidebar;->e:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->c(Lcom/qianxian/siderbar/Sidebar;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lock"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    if-nez v0, :cond_6

    const v0, 0x7f040006

    :goto_2
    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/qianxian/siderbar/bc;

    iget v2, p0, Lcom/qianxian/siderbar/bb;->c:I

    invoke-direct {v1, p0, v2}, Lcom/qianxian/siderbar/bc;-><init>(Lcom/qianxian/siderbar/bb;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v0}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;Z)V

    :cond_4
    iget-object v0, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v0}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v0

    invoke-static {v0}, Lcom/qianxian/siderbar/Sidebar;->c(Lcom/qianxian/siderbar/Sidebar;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/qianxian/siderbar/bb;->b:I

    iget-object v3, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v3}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v3

    sget v4, Lcom/qianxian/siderbar/Sidebar;->e:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;Z)V

    iget-object v1, p0, Lcom/qianxian/siderbar/bb;->a:Lcom/qianxian/siderbar/av;

    invoke-static {v1}, Lcom/qianxian/siderbar/av;->a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/qianxian/siderbar/Sidebar;->h(I)V

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f040008

    goto :goto_2
.end method
