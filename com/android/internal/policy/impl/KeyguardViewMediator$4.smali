.class Lcom/android/internal/policy/impl/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 2
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    .line 1275
    :goto_7
    return-void

    .line 1228
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_7

    .line 1231
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1234
    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1237
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1240
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1243
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1246
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1249
    :pswitch_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_7

    .line 1252
    :pswitch_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_47

    move v1, v2

    :goto_43
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_47
    move v1, v3

    goto :goto_43

    .line 1255
    :pswitch_49
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1258
    :pswitch_4f
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_7

    .line 1261
    :pswitch_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_60

    move v1, v2

    :goto_5c
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_60
    move v1, v3

    goto :goto_5c

    .line 1264
    :pswitch_62
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleBatteryStatus(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_7

    .line 1267
    :pswitch_6a
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHideBatteryStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1270
    :pswitch_70
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShowLowBatteryWarn(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    .line 1272
    :pswitch_77
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1226
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_3c
        :pswitch_49
        :pswitch_4f
        :pswitch_55
        :pswitch_77
        :pswitch_62
        :pswitch_6a
        :pswitch_70
    .end packed-switch
.end method
