.class public Lcom/qianxian/sidebar/RunningAppsBar;
.super Lcom/hzsoft/standout/StandOutWindow;


# static fields
.field public static a:I

.field public static b:Landroid/view/View;


# instance fields
.field c:Ljava/util/LinkedList;

.field d:Landroid/content/pm/PackageManager;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    sput v0, Lcom/qianxian/sidebar/RunningAppsBar;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hzsoft/standout/StandOutWindow;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qianxian/sidebar/RunningAppsBar;->e:I

    return-void
.end method

.method private a(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/qianxian/sidebar/RunningAppsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/qianxian/sidebar/RunningAppsBar;)I
    .locals 1

    iget v0, p0, Lcom/qianxian/sidebar/RunningAppsBar;->e:I

    return v0
.end method

.method static synthetic a(Lcom/qianxian/sidebar/RunningAppsBar;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/qianxian/sidebar/RunningAppsBar;->a(F)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/qianxian/sidebar/RunningAppsBar;I)V
    .locals 0

    iput p1, p0, Lcom/qianxian/sidebar/RunningAppsBar;->e:I

    return-void
.end method

.method private i()V
    .locals 2

    new-instance v0, Lcom/qianxian/sidebar/t;

    invoke-direct {v0, p0}, Lcom/qianxian/sidebar/t;-><init>(Lcom/qianxian/sidebar/RunningAppsBar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/qianxian/sidebar/t;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x1080038

    return v0
.end method

.method public a(I)Landroid/view/animation/Animation;
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-string v2, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v1
.end method

.method public a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
    .locals 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "s_width"

    const/16 v2, 0x46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qianxian/sidebar/RunningAppsBar;->a:I

    sget v0, Lcom/qianxian/sidebar/RunningAppsBar;->a:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/qianxian/sidebar/RunningAppsBar;->a(F)I

    move-result v4

    new-instance v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const v6, 0x7fffffff

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lcom/hzsoft/standout/StandOutWindow;IIIII)V

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 3

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/RunningAppsBar;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/b;->a()Lcom/hzsoft/standout/b/k;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/hzsoft/standout/b/k;->a(II)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(ILandroid/widget/FrameLayout;)V
    .locals 4

    const/16 v3, 0x28

    invoke-virtual {p0}, Lcom/qianxian/sidebar/RunningAppsBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianxian/sidebar/RunningAppsBar;->d:Landroid/content/pm/PackageManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/RunningAppsBar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/qianxian/sidebar/RunningAppsBar;->b:Landroid/view/View;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "s_width"

    const/16 v3, 0x46

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/qianxian/sidebar/RunningAppsBar;->a:I

    sget-object v1, Lcom/qianxian/sidebar/RunningAppsBar;->b:Landroid/view/View;

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/qianxian/sidebar/RunningAppsBar;->i()V

    return-void
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/RunningAppsBar;->h(I)V

    :cond_0
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
    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/RunningAppsBar;->h(I)V
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

.method public a(ILcom/hzsoft/standout/b/b;Z)Z
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/RunningAppsBar;->h(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
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

    const-string v0, "SimpleWindow"

    return-object v0
.end method

.method public b(ILcom/hzsoft/standout/b/b;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/qianxian/sidebar/s;

    invoke-direct {v0, p0}, Lcom/qianxian/sidebar/s;-><init>(Lcom/qianxian/sidebar/RunningAppsBar;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/qianxian/sidebar/s;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianxian/sidebar/r;

    invoke-direct {v1, p0}, Lcom/qianxian/sidebar/r;-><init>(Lcom/qianxian/sidebar/RunningAppsBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return v2
.end method

.method public c(I)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-static {p0, v0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public e(I)Landroid/view/animation/Animation;
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-string v2, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v1
.end method
