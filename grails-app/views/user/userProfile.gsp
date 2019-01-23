<%--
  Created by IntelliJ IDEA.
  User: kuldeep
  Date: 23/1/19
  Time: 11:00 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title>User Profile</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script type='text/javascript' charset='utf-8' src='${resource(dir: 'js', file: 'userDetailsValidation.js')}'></script>
    <style>

        .error{color:red}
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="accordion-option">
            <h3 class="title">User Profile Details</h3>
            <a href="javascript:void(0)" class="toggle-accordion active" accordion-id="#accordion"></a>
        </div>
        <div class="clearfix"></div>
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default col-lg-6" >
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <g:if test='${flash.message}'>
                            <div class='login_message'>${flash.message}</div>
                        </g:if>
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            User Details
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">
                        <form class="well form-horizontal" id="userDetailsForm" method="post" action="updateUserDetails">
                            <fieldset>

                                <div class="form-group">
                                    <input type="hidden" id="userId" name="userId"  class="form-control"  value="${user.id}" >
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Full Name</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="fullName" name="fullName" placeholder="Name should be same as PAN Card" class="form-control" required="true" value="${user.fullName}" type="text"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">PAN Card Number</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                            <input id="panCardNumber" name="panCardNumber" placeholder="PAN card number" class="form-control" required="true" value="${user.panCardNumber}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Address Line 1</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input id="addressLine1" name="addressLine1" placeholder="Address Line 1" class="form-control" required="true" value="${user.addressLine1}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Address Line 2</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input id="addressLine2" name="addressLine2" placeholder="Address Line 2" class="form-control" required="true" value="${user.addressLine2}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">City</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input id="city" name="city" placeholder="City" class="form-control" required="true" value="${user.city}" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">State/Province/Region</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input id="state" name="state" placeholder="State/Province/Region" class="form-control" required="true" value="${user.state}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Postal Code/ZIP</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input id="postCode" name="postCode" placeholder="Postal Code/ZIP" class="form-control" required="true" value="${user.postCode}" type="text"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Country</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input id="country" name="country" placeholder="" class="form-control" required="true"
                                                   value="${user.country}" type="text"></div>
                                    </div>
                                </div>
                                %{--<div class="form-group">--}%
                                %{--<label class="col-md-4 control-label">Country</label>--}%
                                %{--<div class="col-md-8 inputGroupContainer">--}%
                                %{--<div class="input-group">--}%
                                %{--<span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>--}%
                                %{--<select class="selectpicker form-control">--}%
                                %{--<option>A really long option to push the menu over the edget</option>--}%
                                %{--</select>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                %{--</div>--}%
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Email</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input id="email" name="email" placeholder="Email" class="form-control" required="true" value="${user.email}" readonly type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Phone Number</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                            <input id="phoneNumber" name="phoneNumber" placeholder="Phone Number" class="form-control" required="true" value="${user.phoneNumber}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group" style="float: right">
                                    <input type="submit" value="Update" class="btn btn-primary" />
                                </div>
                            </fieldset>
                        </form>

                    </div>
                </div>
            </div>
            <div class="panel panel-default col-lg-6" style="margin-top: 1px">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                            Bank Details
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        <form class="well form-horizontal" id="userBankDetailsForm" method="post" action="updateUserBankDetails">
                            <fieldset>
                                <div class="form-group">
                                    <input type="hidden" id="userBankId" name="userBankId"  class="form-control"  value="${userBankDetails?.id}" >
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Bank Name</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                            <input id="bankName" name="bankName" placeholder="Bank Name" class="form-control" required="true" value="${userBankDetails?.bankName}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Account Number</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                            <input id="accountNumber" name="accountNumber" placeholder="Account Number" class="form-control" required="true" value="${userBankDetails?.accountNumber}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">IFSC Code</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                            <input id="ifscCode" name="ifscCode" placeholder="ifsc Code" class="form-control" required="true" value="${userBankDetails?.ifscCode}" type="text"></div>
                                    </div>
                                </div>
                                <div class="form-group" style="float: right">
                                    <input type="submit" value="Update" class="btn btn-primary" />
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            %{--<div class="panel panel-default">--}%
                %{--<div class="panel-heading" role="tab" id="headingThree">--}%
                    %{--<h4 class="panel-title">--}%
                        %{--<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">--}%
                            %{--Address Details--}%
                        %{--</a>--}%
                    %{--</h4>--}%
                %{--</div>--}%
                %{--<div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">--}%
                    %{--<div class="panel-body">--}%
                        %{--Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird--}%
                        %{--on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,--}%
                        %{--raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
        </div>
    </div>

</div>
<script>
</script>
</body>
</html>