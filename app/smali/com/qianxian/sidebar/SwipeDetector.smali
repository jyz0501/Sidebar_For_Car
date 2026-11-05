.class public Lcom/qianxian/sidebar/SwipeDetector;
.super Lcom/hzsoft/standout/StandOutWindow;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:I


# instance fields
.field private d:Landroid/hardware/Camera;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qianxian/sidebar/SwipeDetector;->b:Z

    sput v0, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hzsoft/standout/StandOutWindow;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->e:Z

    return-void
.end method

.method private a(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/qianxian/sidebar/SwipeDetector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/qianxian/sidebar/SwipeDetector;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->a(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f020019

    return v0
.end method

.method public a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
    .locals 9

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "side"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    const-string v0, "e_width"

    const/16 v3, 0x10

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/qianxian/sidebar/SwipeDetector;->a(F)I

    move-result v3

    const-string v0, "e_pos"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v6, v2

    :goto_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/SwipeDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sget v5, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    move v5, v1

    :goto_1
    int-to-double v0, v0

    const-string v2, "e_height"

    const/16 v7, 0x1f4

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v7, v2

    mul-double/2addr v0, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v7

    double-to-int v4, v0

    const/16 v0, 0x64

    if-ne v4, v0, :cond_0

    const/4 v4, -0x1

    :cond_0
    new-instance v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lcom/hzsoft/standout/StandOutWindow;IIIII)V

    return-object v0

    :pswitch_0
    const/high16 v6, -0x80000000

    goto :goto_0

    :pswitch_1
    move v6, v1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 4

    const/4 v2, 0x1

    const v3, 0x7f0a002b

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianxian/sidebar/SwipeDetector;->a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianxian/sidebar/SwipeDetector;->a(ILcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/qianxian/sidebar/SwipeDetector;->a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/qianxian/sidebar/SwipeDetector;->a(ILcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/hzsoft/standout/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hzsoft/standout/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianxian/sidebar/SwipeDetector;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v0, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    if-nez v0, :cond_0

    const v0, 0x7f020027

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f020028

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hzsoft/standout/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hzsoft/standout/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    :try_start_0
    iget-boolean v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->e:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error. Flash maybe in use by other application, or nonexistent"

    sput-object v1, Lcom/qianxian/sidebar/WidgetHelperActivity;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qianxian/sidebar/WidgetHelperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianxian/sidebar/SwipeDetector;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/SwipeDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->q(I)Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f020013

    iput v2, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/SwipeDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/qianxian/sidebar/SwipeDetector;->q(I)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(ILandroid/widget/FrameLayout;)V
    .locals 4

    const v3, 0x7f0a002b

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "side"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qianxian/sidebar/SwipeDetector;->c:I

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/SwipeDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qianxian/sidebar/bh;

    invoke-direct {v1, p0}, Lcom/qianxian/sidebar/bh;-><init>(Lcom/qianxian/sidebar/SwipeDetector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public b(I)I
    .locals 2

    invoke-super {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->b(I)I

    move-result v0

    sget v1, Lcom/hzsoft/standout/a/a;->n:I

    or-int/2addr v0, v1

    sget v1, Lcom/hzsoft/standout/a/a;->m:I

    or-int/2addr v0, v1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Sidebar"

    return-object v0
.end method

.method public b(ILcom/hzsoft/standout/b/b;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianxian/sidebar/bi;

    invoke-direct {v1, p0}, Lcom/qianxian/sidebar/bi;-><init>(Lcom/qianxian/sidebar/SwipeDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qianxian/sidebar/SwipeDetector;->b:Z

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianxian/sidebar/SwipeDetector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public c(ILcom/hzsoft/standout/b/b;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->e:Z

    iget-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/qianxian/sidebar/SwipeDetector;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v1, Lcom/qianxian/sidebar/SwipeDetector;->b:Z

    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u70b9\u51fb\u8fdb\u5165\u914d\u7f6e\u754c\u9762"

    return-object v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u4fa7\u8fb9\u680f"

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ID cannot equals StandOutWindow.ONGOING_NOTIFICATION_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "SHOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RESTORE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/qianxian/sidebar/SwipeDetector;->v(I)Lcom/hzsoft/standout/b/b;

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_3
    const-string v2, "SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianxian/sidebar/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/qianxian/sidebar/SwipeDetector;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v2, "HIDE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/qianxian/sidebar/SwipeDetector;->t(I)V

    goto :goto_0

    :cond_5
    const-string v2, "CLOSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/qianxian/sidebar/SwipeDetector;->h(I)V

    goto :goto_0

    :cond_6
    const-string v2, "CLOSE_ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/qianxian/sidebar/SwipeDetector;->c()V

    goto :goto_0

    :cond_7
    const-string v2, "SEND_DATA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/qianxian/sidebar/SwipeDetector;->u(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x2

    if-ne v1, v0, :cond_2

    :cond_8
    const-string v0, "com.hzsoft.standout.data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "requestCode"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "com.hzsoft.standout.fromCls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v0, "fromId"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qianxian/sidebar/SwipeDetector;->a(IILandroid/os/Bundle;Ljava/lang/Class;I)V

    goto :goto_0
.end method
