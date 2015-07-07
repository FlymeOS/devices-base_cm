.class Landroid/content/res/ThemeManager$1;
.super Landroid/content/res/IThemeChangeListener$Stub;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/ThemeManager;


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    invoke-direct {p0}, Landroid/content/res/IThemeChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/content/res/ThemeManager;->access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/res/ThemeManager$1$2;

    invoke-direct {v1, p0, p1}, Landroid/content/res/ThemeManager$1$2;-><init>(Landroid/content/res/ThemeManager$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/content/res/ThemeManager;->access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/res/ThemeManager$1$1;

    invoke-direct {v1, p0, p1}, Landroid/content/res/ThemeManager$1$1;-><init>(Landroid/content/res/ThemeManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method
