.class Lcom/android/server/location/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    .line 440
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->-get0(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->-set0(Lcom/android/server/location/ComprehensiveCountryDetector;I)I

    .line 441
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->-get1(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->-set2(Lcom/android/server/location/ComprehensiveCountryDetector;I)I

    .line 443
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->-wrap1(Lcom/android/server/location/ComprehensiveCountryDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0, v2, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->-wrap0(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    .line 439
    return-void
.end method
