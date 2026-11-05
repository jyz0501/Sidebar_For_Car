.class Lcom/qianxian/sidebar/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/SwipeDetector;


# direct methods
.method constructor <init>(Lcom/qianxian/sidebar/SwipeDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Lcom/qianxian/sidebar/SwipeDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    const-string v5, "e_width"

    const/16 v6, 0x10

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/qianxian/sidebar/SwipeDetector;->a(Lcom/qianxian/sidebar/SwipeDetector;F)I

    move-result v4

    sget v5, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    if-nez v5, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v5, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    int-to-float v4, v4

    invoke-static {v5, v4}, Lcom/qianxian/sidebar/SwipeDetector;->a(Lcom/qianxian/sidebar/SwipeDetector;F)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/qianxian/sidebar/SwipeDetector;->a:Z

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/qianxian/sidebar/SwipeDetector;->a:Z

    :try_start_0
    const-string v0, "vibrate"

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Lcom/qianxian/sidebar/SwipeDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    iget-object v0, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    const-class v3, Lcom/qianxian/sidebar/Sidebar;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/qianxian/sidebar/SwipeDetector;->c(Landroid/content/Context;Ljava/lang/Class;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sput-boolean v2, Lcom/qianxian/sidebar/SwipeDetector;->a:Z

    :cond_3
    return v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/qianxian/sidebar/bh;->a:Lcom/qianxian/sidebar/SwipeDetector;

    int-to-float v4, v4

    invoke-static {v6, v4}, Lcom/qianxian/sidebar/SwipeDetector;->a(Lcom/qianxian/sidebar/SwipeDetector;F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
