.class Lcom/hzsoft/standout/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/hzsoft/standout/StandOutWindow;


# direct methods
.method constructor <init>(Lcom/hzsoft/standout/StandOutWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/b;->a:Lcom/hzsoft/standout/StandOutWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hzsoft/standout/b;->a:Lcom/hzsoft/standout/StandOutWindow;

    invoke-virtual {v0}, Lcom/hzsoft/standout/StandOutWindow;->c()V

    return-void
.end method
