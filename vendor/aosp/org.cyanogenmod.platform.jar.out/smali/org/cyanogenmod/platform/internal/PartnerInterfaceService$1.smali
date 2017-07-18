.class Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;
.super Lcyanogenmod/app/IPartnerInterface$Stub;
.source "PartnerInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-direct {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentHotwordPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap1(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 186
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 187
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->getHotwordPackageNameInternal()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 189
    return-object v0
.end method

.method public reboot()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap4(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 150
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 151
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap7(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 152
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 143
    return-void
.end method

.method public setAirplaneModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 105
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap2(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 111
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap5(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 113
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 104
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 118
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap2(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 124
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap6(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 126
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 117
    return-void
.end method

.method public setZenMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap3(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 163
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 164
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const-wide/16 v4, -0x1

    invoke-static {v1, p1, v4, v5}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap0(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;IJ)Z

    move-result v0

    .line 165
    .local v0, "success":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 166
    return v0
.end method

.method public setZenModeWithDuration(IJ)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 171
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap3(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 177
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 178
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v1, p1, p2, p3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap0(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;IJ)Z

    move-result v0

    .line 179
    .local v0, "success":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 180
    return v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap4(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 137
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 138
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->-wrap7(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 139
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 130
    return-void
.end method
