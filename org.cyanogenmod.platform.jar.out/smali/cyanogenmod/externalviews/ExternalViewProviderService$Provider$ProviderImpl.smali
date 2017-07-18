.class final Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;
.super Lcyanogenmod/externalviews/IExternalViewProvider$Stub;
.source "ExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderImpl"
.end annotation


# instance fields
.field private mAskedShow:Z

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mShouldShow:Z

.field private final mWindow:Landroid/view/Window;

.field final synthetic this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;


# direct methods
.method static synthetic -get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    return p1
.end method

.method static synthetic -set1(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    return p1
.end method

.method static synthetic -wrap0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->updateVisibility()V

    return-void
.end method

.method public constructor <init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;)V
    .locals 2
    .param p1, "this$1"    # Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;
    .param p2, "provider"    # Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    .prologue
    .line 97
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    invoke-direct {p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    .line 98
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    .line 99
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->onCreateView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->getWindowType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 103
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->getWindowFlags()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 97
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mShouldShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->mAskedShow:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 204
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    return-void

    .line 205
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public alterWindow(IIIIZLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "visible"    # Z
    .param p6, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 177
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$7;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public onAttach(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public onDetach()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$2;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$2;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$5;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$5;-><init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method
