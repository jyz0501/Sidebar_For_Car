.class public Lcom/qianxian/sidebar/t;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/qianxian/sidebar/RunningAppsBar;


# direct methods
.method public constructor <init>(Lcom/qianxian/sidebar/RunningAppsBar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/sidebar/t;)Lcom/qianxian/sidebar/RunningAppsBar;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/qianxian/sidebar/RunningAppsBar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-virtual {v3}, Lcom/qianxian/sidebar/RunningAppsBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/qianxian/sidebar/RunningAppsBar;->b:Landroid/view/View;

    const v4, 0x7f0a000a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v4, v4, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v0, v0, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/qianxian/sidebar/RunningAppsBar;->b:Landroid/view/View;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    :try_start_0
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.systemui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/qianxian/sidebar/RunningAppsBar;->a(Lcom/qianxian/sidebar/RunningAppsBar;F)I

    move-result v6

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    sget v8, Lcom/qianxian/sidebar/RunningAppsBar;->a:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/qianxian/sidebar/RunningAppsBar;->a(Lcom/qianxian/sidebar/RunningAppsBar;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    sget v8, Lcom/qianxian/sidebar/RunningAppsBar;->a:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/qianxian/sidebar/RunningAppsBar;->a(Lcom/qianxian/sidebar/RunningAppsBar;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v6, v6, Lcom/qianxian/sidebar/RunningAppsBar;->d:Landroid/content/pm/PackageManager;

    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/qianxian/sidebar/u;

    invoke-direct {v6, p0, v2}, Lcom/qianxian/sidebar/u;-><init>(Lcom/qianxian/sidebar/t;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lcom/qianxian/sidebar/v;

    invoke-direct {v6, p0, v1}, Lcom/qianxian/sidebar/v;-><init>(Lcom/qianxian/sidebar/t;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/qianxian/sidebar/t;->a:Lcom/qianxian/sidebar/RunningAppsBar;

    iget-object v1, v1, Lcom/qianxian/sidebar/RunningAppsBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
