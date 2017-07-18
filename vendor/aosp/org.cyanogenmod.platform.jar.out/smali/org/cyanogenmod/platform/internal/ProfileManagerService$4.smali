.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;
.super Ljava/lang/Object;
.source "ProfileManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 148
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 160
    const/4 v1, 0x0

    return v1

    .line 150
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "newState":Landroid/content/Intent;
    const-string/jumbo v1, "profile_state"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get2(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 155
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 158
    :cond_0
    return v3

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
