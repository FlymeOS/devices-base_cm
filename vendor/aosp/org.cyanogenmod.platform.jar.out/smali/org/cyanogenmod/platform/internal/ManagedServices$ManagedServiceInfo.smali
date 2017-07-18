.class public Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagedServiceInfo"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public connection:Landroid/content/ServiceConnection;

.field public isSystem:Z

.field public service:Landroid/os/IInterface;

.field public targetSdkVersion:I

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

.field public userid:I


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ManagedServices;
    .param p2, "service"    # Landroid/os/IInterface;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userid"    # I
    .param p5, "isSystem"    # Z
    .param p6, "connection"    # Landroid/content/ServiceConnection;
    .param p7, "targetSdkVersion"    # I

    .prologue
    .line 537
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 540
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 541
    iput p4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    .line 542
    iput-boolean p5, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 543
    iput-object p6, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 544
    iput p7, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 538
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-boolean v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->-wrap2(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/IInterface;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 573
    return-void
.end method

.method public enabledAndUserMatches(I)Z
    .locals 4
    .param p1, "nid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 560
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    return v0

    .line 563
    :cond_0
    iget v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v1, v2, :cond_1

    return v3

    .line 564
    :cond_1
    if-eq p1, v2, :cond_2

    iget v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne p1, v1, :cond_3

    :cond_2
    return v3

    .line 565
    :cond_3
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->-get3(Lorg/cyanogenmod/platform/internal/ManagedServices;)Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    :cond_4
    return v0
.end method

.method public isEnabledForCurrentProfiles()Z
    .locals 2

    .prologue
    .line 584
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 586
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->-get1(Lorg/cyanogenmod/platform/internal/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportsProfiles()Z
    .locals 2

    .prologue
    .line 569
    iget v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ManagedServiceInfo["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v2, "component="

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    const-string/jumbo v2, ",userid="

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    iget v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->userid:I

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 552
    const-string/jumbo v2, ",isSystem="

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 552
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    const-string/jumbo v2, ",targetSdkVersion="

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    iget v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    const-string/jumbo v2, ",connection="

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_0

    .line 549
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    const-string/jumbo v1, ",service="

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    const/16 v1, 0x5d

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 554
    :cond_0
    const-string/jumbo v0, "<connection>"

    goto :goto_0
.end method
