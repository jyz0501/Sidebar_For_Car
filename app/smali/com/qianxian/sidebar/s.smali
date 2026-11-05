.class public Lcom/qianxian/sidebar/s;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/RunningAppsBar;


# direct methods
.method public constructor <init>(Lcom/qianxian/sidebar/RunningAppsBar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/s;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v2, 0x0

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget-object v0, p0, Lcom/qianxian/sidebar/s;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    int-to-double v5, v0

    div-double/2addr v5, v8

    mul-double/2addr v3, v5

    double-to-int v5, v3

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    int-to-double v6, v0

    div-double/2addr v6, v8

    mul-double/2addr v3, v6

    double-to-int v1, v3

    const-wide v3, 0x4072c00000000000L    # 300.0

    int-to-double v6, v0

    div-double/2addr v6, v8

    mul-double/2addr v3, v6

    double-to-int v0, v3

    move v3, v1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/qianxian/sidebar/s;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v4, v4, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/qianxian/sidebar/s;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    const v6, 0x7f040003

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/16 v4, 0x14

    add-int/lit8 v3, v3, -0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v3, v4, 0xa

    iget-object v7, p0, Lcom/qianxian/sidebar/s;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v7, v7, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    div-int/2addr v3, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/qianxian/sidebar/s;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v0, v0, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    move v3, v4

    goto :goto_0
.end method
