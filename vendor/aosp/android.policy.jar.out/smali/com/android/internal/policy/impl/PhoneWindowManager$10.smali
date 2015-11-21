.class Lcom/android/internal/policy/impl/PhoneWindowManager$10;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 1679
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1661
    :cond_0
    return-void
.end method

.method public onSwipeFromLeft()V
    .locals 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1675
    :cond_0
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1668
    :cond_0
    return-void
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1655
    :cond_0
    return-void
.end method
