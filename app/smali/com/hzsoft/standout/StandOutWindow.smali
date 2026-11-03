.class public abstract Lcom/hzsoft/standout/StandOutWindow;
.super Landroid/app/Service;


# static fields
.field static j:Lcom/hzsoft/standout/b/b;

.field static k:Lcom/hzsoft/standout/g;

.field public static l:Z


# instance fields
.field private a:Landroid/app/NotificationManager;

.field m:Landroid/view/LayoutInflater;

.field n:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hzsoft/standout/StandOutWindow;->j:Lcom/hzsoft/standout/b/b;

    new-instance v0, Lcom/hzsoft/standout/g;

    invoke-direct {v0}, Lcom/hzsoft/standout/g;-><init>()V

    sput-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.hzsoft.standout.data"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.hzsoft.standout.fromCls"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SEND_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qianxian/siderbar/Compat;->startServiceCompat(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CLOSE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 4

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {v0, p2, p1}, Lcom/hzsoft/standout/g;->b(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "RESTORE"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "standout://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "SHOW"

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/hzsoft/standout/StandOutWindow;->a(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qianxian/siderbar/Compat;->startServiceCompat(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qianxian/siderbar/Compat;->startServiceCompat(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)Landroid/view/animation/Animation;
    .locals 1

    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(ILcom/hzsoft/standout/b/b;)Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
.end method

.method public a(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 0

    return-void
.end method

.method public abstract a(ILandroid/widget/FrameLayout;)V
.end method

.method public a(ILcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/hzsoft/standout/b/b;->h:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/hzsoft/standout/b/b;->h:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hzsoft/standout/StandOutWindow;->a(ILcom/hzsoft/standout/b/b;Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "StandOutWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " update cancelled by implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/hzsoft/standout/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/Class;IILandroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/hzsoft/standout/StandOutWindow;->b(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    return-void
.end method

.method public final a(Lcom/hzsoft/standout/b/b;)V
    .locals 0

    sput-object p1, Lcom/hzsoft/standout/StandOutWindow;->j:Lcom/hzsoft/standout/b/b;

    return-void
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILcom/hzsoft/standout/b/b;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public b(ILcom/hzsoft/standout/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/hzsoft/standout/b/b;)Z
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to unfocus a null window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hzsoft/standout/b/b;->a(Z)Z

    move-result v0

    return v0
.end method

.method public c(I)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StandOutWindow"

    const-string v1, "Windows close all cancelled by implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->h(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public c(ILcom/hzsoft/standout/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzsoft/standout/g;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(ILcom/hzsoft/standout/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    iget-object v3, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v3, v3, Lcom/hzsoft/standout/b/a;->f:I

    iget-object v4, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v4, v4, Lcom/hzsoft/standout/b/a;->d:I

    sub-int/2addr v3, v4

    iget-object v4, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v4, v4, Lcom/hzsoft/standout/b/a;->g:I

    iget-object v5, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v5, v5, Lcom/hzsoft/standout/b/a;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hzsoft/standout/StandOutWindow;->b(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)V

    return v1

    :pswitch_0
    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/hzsoft/standout/b/a;->f:I

    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/hzsoft/standout/b/a;->g:I

    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v2, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v2, v2, Lcom/hzsoft/standout/b/a;->f:I

    iput v2, v0, Lcom/hzsoft/standout/b/a;->d:I

    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v2, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v2, v2, Lcom/hzsoft/standout/b/a;->g:I

    iput v2, v0, Lcom/hzsoft/standout/b/a;->e:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v5, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v5, v5, Lcom/hzsoft/standout/b/a;->f:I

    sub-int/2addr v0, v5

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v6, v6, Lcom/hzsoft/standout/b/a;->g:I

    sub-int/2addr v5, v6

    iget-object v6, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/hzsoft/standout/b/a;->f:I

    iget-object v6, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/hzsoft/standout/b/a;->g:I

    iget-object v6, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-boolean v6, v6, Lcom/hzsoft/standout/b/a;->h:Z

    if-nez v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->e:I

    if-ge v3, v6, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->e:I

    if-lt v3, v4, :cond_0

    :cond_1
    iget-object v3, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iput-boolean v1, v3, Lcom/hzsoft/standout/b/a;->h:Z

    iget v3, p2, Lcom/hzsoft/standout/b/b;->c:I

    sget v4, Lcom/hzsoft/standout/a/a;->d:I

    invoke-static {v3, v4}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget v3, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    iget v0, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    add-int/2addr v0, v5

    iput v0, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    :cond_2
    invoke-virtual {p2}, Lcom/hzsoft/standout/b/b;->a()Lcom/hzsoft/standout/b/k;

    move-result-object v0

    iget v3, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->x:I

    iget v2, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-virtual {v0, v3, v2}, Lcom/hzsoft/standout/b/k;->a(II)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/k;->a()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iput-boolean v0, v5, Lcom/hzsoft/standout/b/a;->h:Z

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v1, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->e:I

    if-ge v3, v5, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v2, v2, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->e:I

    if-ge v3, v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_0

    iget v0, p2, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->k:I

    invoke-static {v0, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->g(I)V

    goto/16 :goto_0

    :cond_4
    iget v0, p2, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->l:I

    invoke-static {v0, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->g(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public e(I)Landroid/view/animation/Animation;
    .locals 1

    const/high16 v0, 0x10a0000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/hzsoft/standout/b/b;
    .locals 1

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->j:Lcom/hzsoft/standout/b/b;

    return-object v0
.end method

.method public e(ILcom/hzsoft/standout/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hzsoft/standout/StandOutWindow;->c(ILcom/hzsoft/standout/b/b;Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/hzsoft/standout/b/a;->f:I

    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/hzsoft/standout/b/a;->g:I

    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v1, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v1, v1, Lcom/hzsoft/standout/b/a;->f:I

    iput v1, v0, Lcom/hzsoft/standout/b/a;->d:I

    iget-object v0, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget-object v1, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v1, v1, Lcom/hzsoft/standout/b/a;->g:I

    iput v1, v0, Lcom/hzsoft/standout/b/a;->e:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v2, v2, Lcom/hzsoft/standout/b/a;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    iget v3, v3, Lcom/hzsoft/standout/b/a;->g:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->d:I

    if-lt v1, v2, :cond_0

    iget v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/hzsoft/standout/b/a;->f:I

    :cond_0
    iget v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->c:I

    if-lt v1, v2, :cond_1

    iget v1, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->a:I

    if-gt v1, v2, :cond_1

    iget-object v1, p2, Lcom/hzsoft/standout/b/b;->g:Lcom/hzsoft/standout/b/a;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/hzsoft/standout/b/a;->g:I

    :cond_1
    invoke-virtual {p2}, Lcom/hzsoft/standout/b/b;->a()Lcom/hzsoft/standout/b/k;

    move-result-object v1

    iget v2, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v0, v0, Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/hzsoft/standout/b/k;->b(II)Lcom/hzsoft/standout/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzsoft/standout/b/k;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->a()I

    move-result v0

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to bringToFront("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") a null window."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget v0, v1, Lcom/hzsoft/standout/b/b;->h:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to bringToFront("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") a window that is not shown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Lcom/hzsoft/standout/b/b;->h:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/hzsoft/standout/StandOutWindow;->d(ILcom/hzsoft/standout/b/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "StandOutWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bring to front cancelled by implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final h(I)V
    .locals 3

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/hzsoft/standout/b/b;->h:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/hzsoft/standout/StandOutWindow;->c(ILcom/hzsoft/standout/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StandOutWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " close cancelled by implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0, v1}, Lcom/hzsoft/standout/StandOutWindow;->b(Lcom/hzsoft/standout/b/b;)Z

    const/4 v0, 0x2

    iput v0, v1, Lcom/hzsoft/standout/b/b;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->a(I)Landroid/view/animation/Animation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_3
    new-instance v2, Lcom/hzsoft/standout/a;

    invoke-direct {v2, p0, v1, p1}, Lcom/hzsoft/standout/a;-><init>(Lcom/hzsoft/standout/StandOutWindow;Lcom/hzsoft/standout/b/b;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hzsoft/standout/b/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hzsoft/standout/g;->c(ILjava/lang/Class;)V

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzsoft/standout/g;->b(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hzsoft/standout/StandOutWindow;->l:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->stopForeground(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(I)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/hzsoft/standout/b/b;->c:I

    sget v3, Lcom/hzsoft/standout/a/a;->n:I

    invoke-static {v2, v3}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->j:Lcom/hzsoft/standout/b/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->j:Lcom/hzsoft/standout/b/b;

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->b(Lcom/hzsoft/standout/b/b;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/hzsoft/standout/b/b;->a(Z)Z

    move-result v0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j(I)Landroid/widget/PopupWindow;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x2

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->k(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    new-instance v1, Lcom/hzsoft/standout/e;

    const v2, 0x1080038

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Quit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hzsoft/standout/b;

    invoke-direct {v4, p0}, Lcom/hzsoft/standout/b;-><init>(Lcom/hzsoft/standout/StandOutWindow;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/hzsoft/standout/e;-><init>(Lcom/hzsoft/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v4, v6, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v5

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzsoft/standout/e;

    iget-object v1, p0, Lcom/hzsoft/standout/StandOutWindow;->m:Landroid/view/LayoutInflater;

    const v2, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v7, v0, Lcom/hzsoft/standout/e;->c:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/hzsoft/standout/c;

    invoke-direct {v2, p0, v0, v5}, Lcom/hzsoft/standout/c;-><init>(Lcom/hzsoft/standout/StandOutWindow;Lcom/hzsoft/standout/e;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public k(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l(I)Landroid/app/Notification;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->f()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->n(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->m(I)Landroid/content/Intent;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v9, v8, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :cond_0
    invoke-static {p0, v1, v5, v6, v0}, Lcom/qianxian/siderbar/Compat;->buildNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    return-object v8
.end method

.method public m(I)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/qianxian/siderbar/Compat;->ensureForeground(Landroid/app/Service;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->a:Landroid/app/NotificationManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/hzsoft/standout/StandOutWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->m:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hzsoft/standout/StandOutWindow;->l:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->c()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_9

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
    invoke-virtual {p0, v1}, Lcom/hzsoft/standout/StandOutWindow;->v(I)Lcom/hzsoft/standout/b/b;

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_3
    const-string v2, "HIDE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/hzsoft/standout/StandOutWindow;->t(I)V

    goto :goto_0

    :cond_4
    const-string v2, "CLOSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/hzsoft/standout/StandOutWindow;->h(I)V

    goto :goto_0

    :cond_5
    const-string v2, "CLOSE_ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->c()V

    goto :goto_0

    :cond_6
    const-string v2, "SEND_DATA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/hzsoft/standout/StandOutWindow;->u(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, -0x2

    if-ne v1, v0, :cond_8

    :cond_7
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

    invoke-virtual/range {v0 .. v5}, Lcom/hzsoft/standout/StandOutWindow;->a(IILandroid/os/Bundle;Ljava/lang/Class;I)V

    goto :goto_0

    :cond_8
    const-string v0, "StandOutWindow"

    const-string v1, "Failed to send data to non-existant window. Make sure toId is either an existing window\'s id, or is DISREGARD_ID."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    const-string v0, "StandOutWindow"

    const-string v1, "Tried to onStartCommand() with a null intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public p(I)Landroid/view/animation/Animation;
    .locals 1

    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public q(I)Landroid/app/Notification;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->a()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->d(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->c(I)Landroid/content/Intent;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v9, v8, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :cond_0
    invoke-static {p0, v1, v5, v6, v0}, Lcom/qianxian/siderbar/Compat;->buildNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    return-object v8
.end method

.method public r(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hzsoft/standout/StandOutWindow;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s(I)Lcom/hzsoft/standout/b/b;
    .locals 2

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hzsoft/standout/g;->a(ILjava/lang/Class;)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final t(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->s(I)Lcom/hzsoft/standout/b/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/hzsoft/standout/b/b;->h:I

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/hzsoft/standout/StandOutWindow;->e(ILcom/hzsoft/standout/b/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "StandOutWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hide cancelled by implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget v1, v0, Lcom/hzsoft/standout/b/b;->c:I

    sget v2, Lcom/hzsoft/standout/a/a;->p:I

    invoke-static {v1, v2}, Lcom/hzsoft/standout/f;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iput v1, v0, Lcom/hzsoft/standout/b/b;->h:I

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->l(I)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->p(I)Landroid/view/animation/Animation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_2
    new-instance v3, Lcom/hzsoft/standout/d;

    invoke-direct {v3, p0, v0}, Lcom/hzsoft/standout/d;-><init>(Lcom/hzsoft/standout/StandOutWindow;Lcom/hzsoft/standout/b/b;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/hzsoft/standout/b/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->h(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to hide("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") a window that is not shown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to hide("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") a null window."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final u(I)Z
    .locals 2

    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hzsoft/standout/g;->b(ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final v(I)Lcom/hzsoft/standout/b/b;
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->s(I)Lcom/hzsoft/standout/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    :try_start_1
    iget v2, v1, Lcom/hzsoft/standout/b/b;->h:I

    if-ne v2, v3, :cond_1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_0
    :try_start_2
    new-instance v1, Lcom/hzsoft/standout/b/b;

    invoke-direct {v1, p0, p1}, Lcom/hzsoft/standout/b/b;-><init>(Lcom/hzsoft/standout/StandOutWindow;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/hzsoft/standout/StandOutWindow;->b(ILcom/hzsoft/standout/b/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "StandOutWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Window "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " show cancelled by implementation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_4
    iput v0, v1, Lcom/hzsoft/standout/b/b;->h:I

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->e(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1}, Lcom/hzsoft/standout/b/b;->getLayoutParams()Lcom/hzsoft/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/hzsoft/standout/StandOutWindow;->n:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hzsoft/standout/b/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    sget-object v0, Lcom/hzsoft/standout/StandOutWindow;->k:Lcom/hzsoft/standout/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/hzsoft/standout/g;->a(ILjava/lang/Class;Lcom/hzsoft/standout/b/b;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->q(I)Landroid/app/Notification;

    move-result-object v2

    const-string v3, "notification"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f020013

    iput v0, v2, Landroid/app/Notification;->icon:I

    :cond_4
    if-eqz v2, :cond_8

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Landroid/app/Notification;->flags:I

    sget-boolean v0, Lcom/hzsoft/standout/StandOutWindow;->l:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/hzsoft/standout/StandOutWindow;->startForeground(ILandroid/app/Notification;)V

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hzsoft/standout/StandOutWindow;->l:Z

    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/hzsoft/standout/StandOutWindow;->i(I)Z

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/hzsoft/standout/StandOutWindow;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    :cond_8
    sget-boolean v0, Lcom/hzsoft/standout/StandOutWindow;->l:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your StandOutWindow service mustprovide a persistent notification.The notification prevents Androidfrom killing your service in lowmemory situations."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
