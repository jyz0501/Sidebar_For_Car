.class public Lcom/qianxian/Sidebar/au;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/Sidebar;


# direct methods
.method public constructor <init>(Lcom/qianxian/Sidebar/Sidebar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const v2, 0x7f04000b

    const v1, 0x7f04000a

    const/4 v4, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    :try_start_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    invoke-static {v0}, Lcom/qianxian/Sidebar/Sidebar;->a(Lcom/qianxian/Sidebar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "animationSpeed"

    const/16 v5, 0x1f4

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-wide/high16 v5, 0x4079000000000000L    # 400.0

    int-to-double v7, v0

    div-double/2addr v7, v10

    mul-double/2addr v5, v7

    double-to-int v7, v5

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    int-to-double v8, v0

    div-double/2addr v8, v10

    mul-double/2addr v5, v8

    double-to-int v3, v5

    const-wide v5, 0x4072c00000000000L    # 300.0

    int-to-double v8, v0

    div-double/2addr v8, v10

    mul-double/2addr v5, v8

    double-to-int v0, v5

    move v5, v0

    move v6, v3

    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    iget-object v0, v0, Lcom/qianxian/Sidebar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v3, v0, :cond_0

    sget v0, Lcom/qianxian/Sidebar/SwipeDetector;->c:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    iget-object v0, v0, Lcom/qianxian/Sidebar/Sidebar;->g:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    iget-object v2, v2, Lcom/qianxian/Sidebar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/qianxian/Sidebar/SwipeDetector;->c:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_3
    iget-object v8, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/16 v0, 0x14

    add-int/lit8 v6, v6, -0xa

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v0, v6, 0xa

    iget-object v9, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    iget-object v9, v9, Lcom/qianxian/Sidebar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    div-int/2addr v0, v9

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/qianxian/Sidebar/au;->a:Lcom/qianxian/Sidebar/Sidebar;

    iget-object v0, v0, Lcom/qianxian/Sidebar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
