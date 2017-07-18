.class Landroid/net/VpnService$Callback;
.super Landroid/os/Binder;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method private constructor <init>(Landroid/net/VpnService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/VpnService;

    .prologue
    .line 366
    iput-object p1, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/VpnService;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    .line 369
    const v0, 0xffffff

    if-ne p1, v0, :cond_0

    .line 370
    iget-object v0, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    invoke-virtual {v0}, Landroid/net/VpnService;->onRevoke()V

    .line 371
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
