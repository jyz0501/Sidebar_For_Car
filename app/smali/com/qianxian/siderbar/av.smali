.class public Lcom/qianxian/siderbar/av;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/Sidebar;


# direct methods
.method public constructor <init>(Lcom/qianxian/siderbar/Sidebar;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/av;)Lcom/qianxian/siderbar/Sidebar;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "used"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "used"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "apps"

    iget-object v4, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v4}, Lcom/qianxian/siderbar/Sidebar;->b(Lcom/qianxian/siderbar/Sidebar;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v1}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "apps"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    iget-object v1, v1, Lcom/qianxian/siderbar/Sidebar;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    sget-object v0, Lcom/qianxian/siderbar/Sidebar;->f:Landroid/view/View;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    iget-object v1, v1, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    move v1, v2

    :goto_0
    array-length v3, v4

    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v0}, Lcom/qianxian/siderbar/Sidebar;->e(Lcom/qianxian/siderbar/Sidebar;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v3, v4, v1

    iget-object v6, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v6, v3, v5}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v7

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget-object v8, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    sget v9, Lcom/qianxian/siderbar/Sidebar;->e:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    iget-object v7, v7, Lcom/qianxian/siderbar/Sidebar;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/qianxian/siderbar/aw;

    invoke-direct {v7, p0, v6}, Lcom/qianxian/siderbar/aw;-><init>(Lcom/qianxian/siderbar/av;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v7, Lcom/qianxian/siderbar/ay;

    invoke-direct {v7, p0, v6}, Lcom/qianxian/siderbar/ay;-><init>(Lcom/qianxian/siderbar/av;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/qianxian/siderbar/ba;

    invoke-direct {v7, p0, v6, v3}, Lcom/qianxian/siderbar/ba;-><init>(Lcom/qianxian/siderbar/av;Landroid/content/pm/ResolveInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    iget-object v6, v6, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v6, "widget"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_1
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v7

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget-object v8, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    sget v9, Lcom/qianxian/siderbar/Sidebar;->e:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;F)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-virtual {v7}, Lcom/qianxian/siderbar/Sidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/qianxian/siderbar/bb;

    invoke-direct {v7, p0, v3}, Lcom/qianxian/siderbar/bb;-><init>(Lcom/qianxian/siderbar/av;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v7, Lcom/qianxian/siderbar/bd;

    invoke-direct {v7, p0, v3}, Lcom/qianxian/siderbar/bd;-><init>(Lcom/qianxian/siderbar/av;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/qianxian/siderbar/bf;

    invoke-direct {v7, p0, v3, v6}, Lcom/qianxian/siderbar/bf;-><init>(Lcom/qianxian/siderbar/av;ILandroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    iget-object v3, v3, Lcom/qianxian/siderbar/Sidebar;->g:Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v6}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "apps"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/qianxian/siderbar/av;->a:Lcom/qianxian/siderbar/Sidebar;

    invoke-static {v7}, Lcom/qianxian/siderbar/Sidebar;->a(Lcom/qianxian/siderbar/Sidebar;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "apps"

    const-string v9, ""

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "(?m)^[ \t]*\r?\n"

    const-string v9, ""

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method
