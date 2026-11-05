.class Lcom/qianxian/Sidebar/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/Sidebar;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/Sidebar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/am;->a:Lcom/qianxian/Sidebar/Sidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianxian/Sidebar/am;->a:Lcom/qianxian/Sidebar/Sidebar;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lcom/qianxian/Sidebar/am;->a:Lcom/qianxian/Sidebar/Sidebar;

    invoke-static {v3}, Lcom/qianxian/Sidebar/Sidebar;->a(Lcom/qianxian/Sidebar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "animationSpeed"

    const/16 v5, 0x1f4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
