.class Lcom/qianxian/siderbar/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/AppSelector;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/content/SharedPreferences;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/AppSelector;Landroid/view/View;Landroid/content/SharedPreferences;I)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/m;->a:Lcom/qianxian/siderbar/AppSelector;

    iput-object p2, p0, Lcom/qianxian/siderbar/m;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/qianxian/siderbar/m;->c:Landroid/content/SharedPreferences;

    iput p4, p0, Lcom/qianxian/siderbar/m;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qianxian/siderbar/m;)Lcom/qianxian/siderbar/AppSelector;
    .locals 1

    iget-object v0, p0, Lcom/qianxian/siderbar/m;->a:Lcom/qianxian/siderbar/AppSelector;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0a000d

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/qianxian/siderbar/m;->b:Landroid/view/View;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClickable(Z)V

    new-instance v2, Lcom/qianxian/siderbar/a;

    iget-object v3, p0, Lcom/qianxian/siderbar/m;->a:Lcom/qianxian/siderbar/AppSelector;

    const v4, 0x7f030004

    invoke-direct {v2, v3, v4, v1}, Lcom/qianxian/siderbar/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/qianxian/siderbar/n;

    iget v4, p0, Lcom/qianxian/siderbar/m;->d:I

    invoke-direct {v3, p0, v4}, Lcom/qianxian/siderbar/n;-><init>(Lcom/qianxian/siderbar/m;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/qianxian/siderbar/m;->c:Landroid/content/SharedPreferences;

    const-string v3, "apps"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2130837517"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f02000f

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v3, "2130837541"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020029

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "2130837504"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const/high16 v4, 0x7f020000

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "2130837515"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f02000c

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "2130837533"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020021

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "2130837523"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020017

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "2130837507"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020003

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v3, "2130837537"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020025

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v3, "2130837524"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020018

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v3, "2130837522"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020015

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v3, "2130837521"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f020014

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v3, "2130837531"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Lcom/qianxian/siderbar/bg;

    const v4, 0x7f02001f

    invoke-direct {v3, v4}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v3, "2130837532"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/qianxian/siderbar/bg;

    const v3, 0x7f020020

    invoke-direct {v0, v3}, Lcom/qianxian/siderbar/bg;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p0, Lcom/qianxian/siderbar/m;->a:Lcom/qianxian/siderbar/AppSelector;

    invoke-virtual {v0}, Lcom/qianxian/siderbar/AppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v7, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/qianxian/siderbar/m;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/qianxian/siderbar/m;->a:Lcom/qianxian/siderbar/AppSelector;

    invoke-virtual {v1}, Lcom/qianxian/siderbar/AppSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020013

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/qianxian/siderbar/m;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/qianxian/siderbar/m;->b:Landroid/view/View;

    new-instance v1, Lcom/qianxian/siderbar/o;

    iget-object v3, p0, Lcom/qianxian/siderbar/m;->b:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/qianxian/siderbar/o;-><init>(Lcom/qianxian/siderbar/m;Lcom/qianxian/siderbar/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
