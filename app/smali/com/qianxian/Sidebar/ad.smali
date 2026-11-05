.class Lcom/qianxian/Sidebar/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/qianxian/Sidebar/x;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/qianxian/Sidebar/x;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/Sidebar/ad;->a:Lcom/qianxian/Sidebar/x;

    iput-object p2, p0, Lcom/qianxian/Sidebar/ad;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/qianxian/Sidebar/ad;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "boot"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
