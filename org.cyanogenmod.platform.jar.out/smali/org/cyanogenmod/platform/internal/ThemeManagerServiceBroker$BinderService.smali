.class final Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;
.super Lcyanogenmod/themes/IThemeService$Stub;
.source "ThemeManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-direct {p0}, Lcyanogenmod/themes/IThemeService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    return-void
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 158
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->applyDefaultTheme()V

    .line 156
    return-void
.end method

.method public getLastThemeChangeRequestType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 216
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->getLastThemeChangeRequestType()I

    move-result v0

    return v0
.end method

.method public getLastThemeChangeTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 210
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->getLastThemeChangeTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 170
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->getProgress()I

    move-result v0

    return v0
.end method

.method public isThemeApplying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 164
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->isThemeApplying()Z

    move-result v0

    return v0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 182
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 176
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->processThemeResources(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rebuildResourceCache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 204
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->rebuildResourceCache()V

    .line 202
    return-void
.end method

.method public registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 189
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    .line 190
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 187
    return-void
.end method

.method public removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 144
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    .line 145
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 142
    return-void
.end method

.method public requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 1
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 152
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    .line 150
    return-void
.end method

.method public requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 137
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    .line 138
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 135
    return-void
.end method

.method public unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    .line 197
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    .line 198
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 195
    return-void
.end method
