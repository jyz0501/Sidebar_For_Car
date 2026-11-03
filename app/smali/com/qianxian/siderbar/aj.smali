.class Lcom/qianxian/siderbar/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/qianxian/siderbar/x;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/qianxian/siderbar/x;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/qianxian/siderbar/aj;->a:Lcom/qianxian/siderbar/x;

    iput-object p2, p0, Lcom/qianxian/siderbar/aj;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/qianxian/siderbar/aj;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "e_width"

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/qianxian/siderbar/aj;->a:Lcom/qianxian/siderbar/x;

    invoke-static {v0}, Lcom/qianxian/siderbar/x;->a(Lcom/qianxian/siderbar/x;)Lcom/qianxian/siderbar/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianxian/siderbar/SettingsActivity;->a()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
