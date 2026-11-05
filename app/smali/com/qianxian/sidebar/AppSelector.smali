.class public Lcom/qianxian/sidebar/AppSelector;
.super Lcom/hzsoft/standout/StandOutWindow;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hzsoft/standout/StandOutWindow;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qianxian/sidebar/AppSelector;->a:Ljava/util/List;

    return-void
.end method

.method private a(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/qianxian/sidebar/AppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 7

    const v3, 0x7f0a0002

    const v4, 0x7f030004

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/qianxian/sidebar/AppSelector;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    new-instance v5, Lcom/qianxian/sidebar/a;

    invoke-direct {v5, p0, v4, v3}, Lcom/qianxian/sidebar/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/qianxian/sidebar/g;

    invoke-direct {v1, p0, p1}, Lcom/qianxian/sidebar/g;-><init>(Lcom/qianxian/sidebar/AppSelector;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/qianxian/sidebar/h;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/qianxian/sidebar/h;-><init>(Lcom/qianxian/sidebar/AppSelector;Landroid/content/SharedPreferences;Ljava/util/List;Landroid/view/View;Lcom/qianxian/sidebar/a;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    new-instance v1, Lcom/qianxian/sidebar/a;

    iget-object v2, p0, Lcom/qianxian/sidebar/AppSelector;->a:Ljava/util/List;

    invoke-direct {v1, p0, v4, v2}, Lcom/qianxian/sidebar/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/qianxian/sidebar/k;

    invoke-direct {v1, p0, p1}, Lcom/qianxian/sidebar/k;-><init>(Lcom/qianxian/sidebar/AppSelector;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/qianxian/sidebar/AppSelector;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qianxian/sidebar/AppSelector;->a(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/sidebar/AppSelector;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/AppSelector;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f020019

    return v0
.end method

.method public a(I)Landroid/view/animation/Animation;
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v0, 0x7f040000

    sget v2, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v0, 0x7f040001

    :cond_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v2, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method public a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v5, 0x7fffffff

    :goto_0
    const/high16 v0, 0x43570000    # 215.0f

    invoke-direct {p0, v0}, Lcom/qianxian/sidebar/AppSelector;->a(F)I

    move-result v3

    new-instance v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    const/4 v4, -0x1

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lcom/hzsoft/standout/StandOutWindow;IIIII)V

    return-object v0

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public a(ILandroid/widget/FrameLayout;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qianxian/sidebar/AppSelector;->a:Ljava/util/List;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/AppSelector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v2, "side"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0a0001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/qianxian/sidebar/AppSelector;->a(ILandroid/view/View;)V

    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/qianxian/sidebar/l;

    invoke-direct {v3, p0, p1, v0}, Lcom/qianxian/sidebar/l;-><init>(Lcom/qianxian/sidebar/AppSelector;ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/qianxian/sidebar/m;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/qianxian/sidebar/m;-><init>(Lcom/qianxian/sidebar/AppSelector;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/AppSelector;->h(I)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lcom/qianxian/sidebar/Sidebar;

    const/16 v4, 0x8

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/sidebar/AppSelector;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/AppSelector;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)I
    .locals 2

    invoke-super {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->b(I)I

    move-result v0

    sget v1, Lcom/hzsoft/standout/a/a;->o:I

    or-int/2addr v0, v1

    sget v1, Lcom/hzsoft/standout/a/a;->m:I

    or-int/2addr v0, v1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "SwipeDetector"

    return-object v0
.end method

.method public c(I)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/qianxian/sidebar/AppSelector;

    invoke-static {p0, v0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Tap to dismiss"

    return-object v0
.end method

.method public e(I)Landroid/view/animation/Animation;
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v0, 0x7f04000a

    sget v2, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v0, 0x7f04000b

    :cond_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v2, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method
