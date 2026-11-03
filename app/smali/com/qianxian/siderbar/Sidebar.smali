.class public Lcom/qianxian/siderbar/Sidebar;
.super Lcom/hzsoft/standout/StandOutWindow;


# static fields
.field public static a:I

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:Landroid/view/View;


# instance fields
.field g:Ljava/util/LinkedList;

.field h:Landroid/content/pm/PackageManager;

.field i:Landroid/os/Vibrator;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/content/SharedPreferences;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/qianxian/siderbar/Sidebar;->a:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    const/16 v0, 0x3c

    sput v0, Lcom/qianxian/siderbar/Sidebar;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hzsoft/standout/StandOutWindow;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/qianxian/siderbar/Sidebar;->o:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qianxian/siderbar/Sidebar;->p:I

    const/4 v0, 0x4

    sput v0, Lcom/qianxian/siderbar/Sidebar;->a:I

    const-string v0, ""

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    return-void
.end method

.method private a(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/qianxian/siderbar/Sidebar;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/qianxian/siderbar/Sidebar;->a(F)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/qianxian/siderbar/Sidebar;Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qianxian/siderbar/Sidebar;->a(Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/qianxian/siderbar/Sidebar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qianxian/siderbar/Sidebar;->w(I)V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/Sidebar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qianxian/siderbar/Sidebar;->s:Z

    return-void
.end method

.method static synthetic b(Lcom/qianxian/siderbar/Sidebar;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/qianxian/siderbar/Sidebar;I)V
    .locals 0

    iput p1, p0, Lcom/qianxian/siderbar/Sidebar;->p:I

    return-void
.end method

.method static synthetic b(Lcom/qianxian/siderbar/Sidebar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qianxian/siderbar/Sidebar;->q:Z

    return-void
.end method

.method static synthetic c(Lcom/qianxian/siderbar/Sidebar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qianxian/siderbar/Sidebar;->s:Z

    return v0
.end method

.method static synthetic d(Lcom/qianxian/siderbar/Sidebar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qianxian/siderbar/Sidebar;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/qianxian/siderbar/Sidebar;)V
    .locals 0

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->i()V

    return-void
.end method

.method static synthetic f(Lcom/qianxian/siderbar/Sidebar;)V
    .locals 0

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V

    return-void
.end method

.method static synthetic g(Lcom/qianxian/siderbar/Sidebar;)I
    .locals 1

    iget v0, p0, Lcom/qianxian/siderbar/Sidebar;->p:I

    return v0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v1, "lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/qianxian/siderbar/Sidebar;->a(F)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v2, Lcom/qianxian/siderbar/Sidebar;->e:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/qianxian/siderbar/Sidebar;->a(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v2, Lcom/qianxian/siderbar/al;

    invoke-direct {v2, p0}, Lcom/qianxian/siderbar/al;-><init>(Lcom/qianxian/siderbar/Sidebar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :try_start_0
    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x108002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/qianxian/siderbar/am;

    invoke-direct {v0, p0}, Lcom/qianxian/siderbar/am;-><init>(Lcom/qianxian/siderbar/Sidebar;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/qianxian/siderbar/an;

    invoke-direct {v0, p0}, Lcom/qianxian/siderbar/an;-><init>(Lcom/qianxian/siderbar/Sidebar;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j()Ljava/lang/String;
    .locals 5

    const-string v2, ""

    return-object v2

    const/4 v0, 0x0

    const-string v1, ""

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/qianxian/siderbar/Sidebar;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    new-instance v0, Lcom/qianxian/siderbar/av;

    invoke-direct {v0, p0}, Lcom/qianxian/siderbar/av;-><init>(Lcom/qianxian/siderbar/Sidebar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/qianxian/siderbar/av;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private l()V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    return-void
.end method

.method private w(I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    const-string v6, ""

    sparse-switch p1, :sswitch_data_0

    move-object v0, v6

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v7, :cond_0

    sget-boolean v1, Lcom/qianxian/siderbar/WidgetHelperActivity;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    sput-object v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianxian/siderbar/WidgetHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :sswitch_0
    move-object v0, v6

    goto :goto_0

    :sswitch_1
    :try_start_0
    const-class v0, Lcom/qianxian/siderbar/AppDrawer;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->c(Landroid/content/Context;Ljava/lang/Class;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :sswitch_2
    :try_start_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {p0, v1}, Lcom/qianxian/siderbar/Compat;->setWifiEnabledCompat(Landroid/content/Context;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Wi-Fi "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v0, "enabled"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    const-string v0, "disabled"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :sswitch_3
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->startActivity(Landroid/content/Intent;)V

    move-object v0, v6

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->startActivity(Landroid/content/Intent;)V

    move-object v0, v6

    goto :goto_0

    :sswitch_5
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    div-int/lit8 v3, v2, 0x4

    if-ge v1, v3, :cond_4

    const/4 v1, 0x3

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    div-int/lit8 v3, v2, 0x4

    if-lt v1, v3, :cond_5

    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_5

    const/4 v1, 0x3

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    div-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_6

    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    if-ge v1, v3, :cond_6

    const/4 v1, 0x3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_6
    if-ne v1, v2, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object v0, v6

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Auto rotation disabled"

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Auto rotation enabled"

    goto/16 :goto_0

    :sswitch_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->a:Z

    move-object v0, v6

    goto/16 :goto_0

    :sswitch_8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-class v2, Lcom/qianxian/siderbar/SwipeDetector;

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/siderbar/Sidebar;->a(ILjava/lang/Class;IILandroid/os/Bundle;)V

    move-object v0, v6

    goto/16 :goto_0

    :sswitch_9
    const-class v0, Lcom/qianxian/siderbar/RunningAppsBar;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    move-object v0, v6

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x7e

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x7e

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    monitor-exit p0

    move-object v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "Error"

    sput-object v1, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qianxian/siderbar/WidgetHelperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianxian/siderbar/Sidebar;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto/16 :goto_0

    :sswitch_b
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x7f

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x7f

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    monitor-exit p0

    move-object v0, v6

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x57

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x57

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    monitor-exit p0

    move-object v0, v6

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    monitor-exit p0

    move-object v0, v6

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :sswitch_data_0
    .sparse-switch
        0x7f020000 -> :sswitch_3
        0x7f020003 -> :sswitch_7
        0x7f02000c -> :sswitch_4
        0x7f02000f -> :sswitch_1
        0x7f020014 -> :sswitch_b
        0x7f020015 -> :sswitch_a
        0x7f020017 -> :sswitch_6
        0x7f020018 -> :sswitch_9
        0x7f02001f -> :sswitch_d
        0x7f020020 -> :sswitch_c
        0x7f020021 -> :sswitch_5
        0x7f020025 -> :sswitch_8
        0x7f020026 -> :sswitch_0
        0x7f020029 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Landroid/view/animation/Animation;
    .locals 5

    const/4 v4, 0x1

    const/high16 v0, 0x7f040000

    sget v1, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    if-ne v1, v4, :cond_0

    const v0, 0x7f040001

    :cond_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    sput-boolean v4, Lcom/qianxian/siderbar/Sidebar;->b:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/widget/PopupWindow;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/hzsoft/standout/e;

    sget-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02000b

    :goto_0
    const-string v3, ""

    new-instance v4, Lcom/qianxian/siderbar/ao;

    invoke-direct {v4, p0, p2, p1}, Lcom/qianxian/siderbar/ao;-><init>(Lcom/qianxian/siderbar/Sidebar;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/hzsoft/standout/e;-><init>(Lcom/hzsoft/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/hzsoft/standout/e;

    const v2, 0x7f020011

    const-string v3, ""

    new-instance v4, Lcom/qianxian/siderbar/ap;

    invoke-direct {v4, p0, p1}, Lcom/qianxian/siderbar/ap;-><init>(Lcom/qianxian/siderbar/Sidebar;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/hzsoft/standout/e;-><init>(Lcom/hzsoft/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/hzsoft/standout/e;

    const v2, 0x7f02000a

    const-string v3, ""

    new-instance v4, Lcom/qianxian/siderbar/aq;

    invoke-direct {v4, p0, p1}, Lcom/qianxian/siderbar/aq;-><init>(Lcom/qianxian/siderbar/Sidebar;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/hzsoft/standout/e;-><init>(Lcom/hzsoft/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/hzsoft/standout/e;

    const v2, 0x7f020009

    const-string v3, ""

    new-instance v4, Lcom/qianxian/siderbar/ar;

    invoke-direct {v4, p0, p1}, Lcom/qianxian/siderbar/ar;-><init>(Lcom/qianxian/siderbar/Sidebar;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/hzsoft/standout/e;-><init>(Lcom/hzsoft/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v0, v5, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v4

    :cond_0
    const v0, 0x7f020016

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzsoft/standout/e;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/qianxian/siderbar/Sidebar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v6, v0, Lcom/hzsoft/standout/e;->c:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/qianxian/siderbar/as;

    invoke-direct {v2, p0, v4, v0}, Lcom/qianxian/siderbar/as;-><init>(Lcom/qianxian/siderbar/Sidebar;Landroid/widget/PopupWindow;Lcom/hzsoft/standout/e;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->l()V

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v1, "s_width"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qianxian/siderbar/Sidebar;->e:I

    sget v0, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v5, 0x7fffffff

    :goto_0
    sget v0, Lcom/qianxian/siderbar/Sidebar;->e:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->a(F)I

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

.method public a(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v3, "apps"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pkg"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "apps"

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V

    sget v0, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    if-nez v0, :cond_3

    const v0, 0x7f04000a

    :goto_2
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, "widget"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "apps"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "widget:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "apps"

    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "widget:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f04000b

    goto/16 :goto_2

    :pswitch_2
    :try_start_2
    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v3, "apps"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "apps"

    sget-object v5, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/siderbar/Sidebar;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v0, "widget"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "apps"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "apps"

    sget-object v4, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "widget:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :pswitch_3
    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5

    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v3, "apps"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "apps"

    sget-object v5, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_4
    sput-boolean v7, Lcom/qianxian/siderbar/Sidebar;->b:Z

    sput-object v8, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "widget"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "apps"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "apps"

    sget-object v4, Lcom/qianxian/siderbar/Sidebar;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "widget:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :pswitch_4
    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_6

    const-string v0, "app"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v3, "apps"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "apps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?m)^[ \t]*\r?\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_5
    sput-boolean v7, Lcom/qianxian/siderbar/Sidebar;->b:Z

    sput-object v8, Lcom/qianxian/siderbar/Sidebar;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "widget"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "apps"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "apps"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widget:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?m)^[ \t]*\r?\n"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    :pswitch_5
    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V

    goto/16 :goto_0

    :pswitch_6
    sget v0, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p0, v7}, Lcom/qianxian/siderbar/Sidebar;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/b;->a()Lcom/hzsoft/standout/b/k;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hzsoft/standout/b/k;->a(II)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/k;->a()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/qianxian/siderbar/Sidebar;->i(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(ILandroid/widget/FrameLayout;)V
    .locals 9

    const v8, 0x7f0a0029

    const v7, 0x7f0a0028

    const/16 v6, 0xff

    const/16 v5, 0x1e

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/qianxian/siderbar/Sidebar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->h:Landroid/content/pm/PackageManager;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->i:Landroid/os/Vibrator;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/qianxian/siderbar/Sidebar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v1, "side"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "color"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qianxian/siderbar/Sidebar;->o:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "s_opacity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_0
    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "s_opacity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/qianxian/siderbar/Sidebar;->o:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/qianxian/siderbar/Sidebar;->o:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/qianxian/siderbar/Sidebar;->o:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/qianxian/siderbar/Sidebar;->k()V

    return-void

    :cond_0
    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "s_opacity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

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

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianxian/siderbar/Sidebar;->h(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    sput v2, Lcom/qianxian/siderbar/Sidebar;->a:I

    const-class v0, Lcom/qianxian/siderbar/AppSelector;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/qianxian/siderbar/Sidebar;->c(Landroid/content/Context;Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qianxian/siderbar/Sidebar;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

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

    const-string v0, "SimpleWindow"

    return-object v0
.end method

.method public b(ILcom/hzsoft/standout/b/b;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/qianxian/siderbar/au;

    invoke-direct {v0, p0}, Lcom/qianxian/siderbar/au;-><init>(Lcom/qianxian/siderbar/Sidebar;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/qianxian/siderbar/au;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianxian/siderbar/at;

    invoke-direct {v1, p0}, Lcom/qianxian/siderbar/at;-><init>(Lcom/qianxian/siderbar/Sidebar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return v2
.end method

.method public c(I)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/qianxian/siderbar/Sidebar;

    invoke-static {p0, v0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public c(ILcom/hzsoft/standout/b/b;)Z
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public e(I)Landroid/view/animation/Animation;
    .locals 4

    const v0, 0x7f04000a

    sget v1, Lcom/qianxian/siderbar/SwipeDetector;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v0, 0x7f04000b

    :cond_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/siderbar/Sidebar;->r:Landroid/content/SharedPreferences;

    const-string v2, "animationSpeed"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method
