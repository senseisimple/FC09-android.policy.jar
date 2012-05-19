.class Lcom/android/internal/policy/impl/PhoneWindowManager$5;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v4, "WindowManager"

    .line 667
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 668
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 669
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 670
    const-string v2, "WindowManager"

    const-string v3, "interceptKeyTq: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 682
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_18
    :goto_18
    return-void

    .line 677
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_19
    const-string v2, "WindowManager"

    const-string v3, "VOLUME button: Unable to find ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_18

    .line 679
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 680
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v2, "VOLUME button: RemoteException from getTelephonyService()"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method
