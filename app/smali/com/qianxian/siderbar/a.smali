.class public Lcom/qianxian/siderbar/a;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/content/pm/PackageManager;

.field d:I

.field e:Lcom/qianxian/siderbar/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iput-object p1, p0, Lcom/qianxian/siderbar/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qianxian/siderbar/a;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianxian/siderbar/a;->c:Landroid/content/pm/PackageManager;

    iput p2, p0, Lcom/qianxian/siderbar/a;->d:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v6, 0x7f0a0008

    const v5, 0x7f0a0006

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qianxian/siderbar/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/qianxian/siderbar/a;->b:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/qianxian/siderbar/a;->d:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/qianxian/siderbar/b;

    invoke-direct {v1, p0}, Lcom/qianxian/siderbar/b;-><init>(Lcom/qianxian/siderbar/a;)V

    iput-object v1, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iget-object v2, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    const v1, 0x7f0a0006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/qianxian/siderbar/b;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    const v1, 0x7f0a0008

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/qianxian/siderbar/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/qianxian/siderbar/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/qianxian/siderbar/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iget-object v3, v3, Lcom/qianxian/siderbar/b;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iget-object v2, v2, Lcom/qianxian/siderbar/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v1

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianxian/siderbar/b;

    iput-object v1, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, p2

    :goto_2
    invoke-virtual {p0, p1}, Lcom/qianxian/siderbar/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianxian/siderbar/bg;

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/qianxian/siderbar/a;->b:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/qianxian/siderbar/a;->d:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/qianxian/siderbar/b;

    invoke-direct {v1, p0}, Lcom/qianxian/siderbar/b;-><init>(Lcom/qianxian/siderbar/a;)V

    iput-object v1, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iget-object v3, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/qianxian/siderbar/b;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/qianxian/siderbar/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    invoke-virtual {v0}, Lcom/qianxian/siderbar/bg;->a()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/qianxian/siderbar/bg;->a:I

    iget-object v3, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iget-object v3, v3, Lcom/qianxian/siderbar/b;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    iget-object v2, v2, Lcom/qianxian/siderbar/b;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/qianxian/siderbar/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianxian/siderbar/b;

    iput-object v1, p0, Lcom/qianxian/siderbar/a;->e:Lcom/qianxian/siderbar/b;

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method
