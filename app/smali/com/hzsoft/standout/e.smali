.class public Lcom/hzsoft/standout/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/String;

.field public c:I

.field final synthetic d:Lcom/hzsoft/standout/StandOutWindow;


# direct methods
.method public constructor <init>(Lcom/hzsoft/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hzsoft/standout/e;->d:Lcom/hzsoft/standout/StandOutWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/hzsoft/standout/e;->c:I

    iput-object p3, p0, Lcom/hzsoft/standout/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hzsoft/standout/e;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hzsoft/standout/e;->b:Ljava/lang/String;

    return-object v0
.end method
