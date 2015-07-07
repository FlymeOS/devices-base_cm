.class Landroid/wipower/WipowerManager$1;
.super Landroid/wipower/IWipowerManagerCallback$Stub;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/WipowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/wipower/WipowerManager;


# direct methods
.method constructor <init>(Landroid/wipower/WipowerManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/wipower/WipowerManager$1;->this$0:Landroid/wipower/WipowerManager;

    invoke-direct {p0}, Landroid/wipower/IWipowerManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerApply(B)V
    .locals 2
    .param p1, "alert"    # B

    .prologue
    .line 197
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 198
    sget-object v0, Landroid/wipower/WipowerManager$PowerApplyEvent;->ON:Landroid/wipower/WipowerManager$PowerApplyEvent;

    .line 204
    .local v0, "s":Landroid/wipower/WipowerManager$PowerApplyEvent;
    :goto_0
    iget-object v1, p0, Landroid/wipower/WipowerManager$1;->this$0:Landroid/wipower/WipowerManager;

    invoke-virtual {v1, v0}, Landroid/wipower/WipowerManager;->updatePowerApplyAlert(Landroid/wipower/WipowerManager$PowerApplyEvent;)V

    .line 206
    return-void

    .line 200
    .end local v0    # "s":Landroid/wipower/WipowerManager$PowerApplyEvent;
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager$PowerApplyEvent;->OFF:Landroid/wipower/WipowerManager$PowerApplyEvent;

    .restart local v0    # "s":Landroid/wipower/WipowerManager$PowerApplyEvent;
    goto :goto_0
.end method

.method public onWipowerAlert(B)V
    .locals 4
    .param p1, "alert"    # B

    .prologue
    .line 186
    sget-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_NONE:Landroid/wipower/WipowerManager$WipowerAlert;

    .line 187
    .local v0, "wp_alert":Landroid/wipower/WipowerManager$WipowerAlert;
    const-string v1, "WipowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWipowerAlert: alert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Landroid/wipower/WipowerManager$1;->this$0:Landroid/wipower/WipowerManager;

    invoke-virtual {v1, v0}, Landroid/wipower/WipowerManager;->updateWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V

    .line 192
    return-void
.end method

.method public onWipowerData([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 209
    const-string v0, "WipowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWipowerData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    # getter for: Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;
    invoke-static {}, Landroid/wipower/WipowerManager;->access$000()Landroid/wipower/WipowerDynamicParam;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    # getter for: Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;
    invoke-static {}, Landroid/wipower/WipowerManager;->access$000()Landroid/wipower/WipowerDynamicParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/wipower/WipowerDynamicParam;->setValue([B)V

    .line 212
    iget-object v0, p0, Landroid/wipower/WipowerManager$1;->this$0:Landroid/wipower/WipowerManager;

    # getter for: Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;
    invoke-static {}, Landroid/wipower/WipowerManager;->access$000()Landroid/wipower/WipowerDynamicParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/wipower/WipowerManager;->updateWipowerData(Landroid/wipower/WipowerDynamicParam;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "WipowerManager"

    const-string/jumbo v1, "mPruData is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWipowerStateChange(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 175
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 176
    sget-object v0, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    .line 181
    .local v0, "s":Landroid/wipower/WipowerManager$WipowerState;
    :goto_0
    const-string v1, "WipowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWipowerStateChange: state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Landroid/wipower/WipowerManager$1;->this$0:Landroid/wipower/WipowerManager;

    invoke-virtual {v1, v0}, Landroid/wipower/WipowerManager;->updateWipowerState(Landroid/wipower/WipowerManager$WipowerState;)V

    .line 183
    return-void

    .line 178
    .end local v0    # "s":Landroid/wipower/WipowerManager$WipowerState;
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    .restart local v0    # "s":Landroid/wipower/WipowerManager$WipowerState;
    goto :goto_0
.end method
