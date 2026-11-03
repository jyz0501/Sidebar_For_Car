.class public Lcom/qianxian/siderbar/WidgetHelperActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v7, 0x42aa0000    # 85.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v2, v0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/high16 v0, 0x41200000    # 10.0f

    const-string v2, "Brightness set to low"

    sput-object v2, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    float-to-int v4, v0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    div-float/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    sget-object v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    sget-object v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string v0, ""

    sput-object v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    sput-boolean v5, Lcom/qianxian/siderbar/WidgetHelperActivity;->a:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianxian/siderbar/bj;

    invoke-direct {v1, p0}, Lcom/qianxian/siderbar/bj;-><init>(Lcom/qianxian/siderbar/WidgetHelperActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_3

    const/high16 v3, 0x432a0000    # 170.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    :try_start_1
    const-string v0, "Brightness set to high"

    sput-object v0, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_3
    cmpg-float v2, v2, v7

    if-gez v2, :cond_4

    const/high16 v0, 0x42fe0000    # 127.0f

    const-string v2, "Brightness set to medium"

    sput-object v2, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/qianxian/siderbar/WidgetHelperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "Brightness set to auto"

    sput-object v2, Lcom/qianxian/siderbar/WidgetHelperActivity;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
